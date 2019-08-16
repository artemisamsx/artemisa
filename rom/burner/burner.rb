#!/usr/bin/env ruby
require "serialport"

MAX_SECTORS = 128
SERIAL_BAUDRATE = 921600

def read_handshake(serial)
  print "\tReceiving handshake from device... "
  handshake = serial.read(10)
  if handshake != "ROM-BURNER"
    raise IOError, "device responds with a invalid handshake in bytes '#{handshake}'"
  else
    print "Done\n"
  end
end

def read_sector(serial, sector)
  cmd = [0, sector].pack("CC")
  serial.write(cmd)
  serial.read(4096)
end

def erase_sector(serial, sector)
  cmd = [1, sector].pack("CC")
  serial.write(cmd)
  serial.read(1).unpack("C")[0]
end

def write_sector(serial, sector, data)
  cmd = [2, sector].pack("CC")
  serial.write(cmd)
  data.split("").each do |b|
    serial.write(b)
    sent = b.unpack("C")[0]
    recv = serial.read(1).unpack("C")[0]
    if sent != recv
      abort "ERROR\nByte 0x%x was sent, but device reported 0x%x" % [sent, recv]
    end
  end
end

def dump_rom(serial_port, output_file, sectors)
  print "Getting ROM image from device #{serial_port}... \n"
  SerialPort.open(serial_port, SERIAL_BAUDRATE) { |serial|
    read_handshake(serial)
    File.open(output_file, "wb") { |file|
      for sector in sectors
        sector_addr = sector << 12
        print "\tReading sector %d at address 0x%.5x... " % [sector, sector_addr]
        sector = read_sector(serial, sector)
        print "Done\n"
        file.write(sector)
      end
    }
  }
end

def erase_sectors(serial_port, sectors)
  print "Erasing ROM sectors from device #{serial_port}... \n"
  SerialPort.open(serial_port, SERIAL_BAUDRATE) { |serial|
    read_handshake(serial)
    for sector in sectors
      sector_addr = sector << 12
      print "\tErasing sector %d at address 0x%.5x... " % [sector, sector_addr]
      errors = erase_sector(serial, sector)
      if errors == 0
        print "Done\n"
      else
        print "Error (#{errors} bytes failed)\n"
      end
    end
  }
end

def burn_rom(serial_port, input_file, initial_sector)
  print "Burning ROM image to device #{serial_port}... \n"
  SerialPort.open(serial_port, SERIAL_BAUDRATE) { |serial|
    read_handshake(serial)
    File.open(input_file, "rb") { |file|
      sector = initial_sector
      until file.eof?
        sector_addr = sector << 12
        print "\tWriting sector %d at address 0x%.5x... " % [sector, sector_addr]
        data = file.read(4096)
        if data.length < 4096
          print "(too small sector, padding with zeroes) "
          data = data.ljust(4096, "\x00")
        end
        write_sector(serial, sector, data)
        print "Done\n"
        sector += 1
      end
    }
  }
end

def report_error(error)
  abort "Error: #{error}\n" +
    "Usage: rbc dump  <serial port> <output file> [<initial sector>] [<sector count>]\n" +
    "       rbc erase <serial port> [<initial sector>] [<sector count>]\n" +
    "       rbc burn  <serial port> <input file> [<initial sector>]\n" + 
    "\n" +
    "Parameters:\n" +
    "   <serial port>     The serial port where Arduino is connected to\n" +
    "   <input file>      The file where burned data would be read from\n" +
    "   <output file>     The file where dumped data would be stored\n" +
    "   <initial sector>  The first sector the operation would be applied.\n" +
    "                     The first sector is 0. The last sector for SST39F010/20/40\n" +
    "                     is 31, 63 and 127, respectively.\n" +
    "   <sector count>    The number of sectors that will be affected by the operation.\n" +
    "                     Note SST39F010/20/40 has 32, 64 and 128 sectors, respectively\n" +
    "\n"
end

def get_arg(i)
  ARGV[i].nil? ? report_error("invalid arguments") : ARGV[i]
end

def get_arg_opt(i, default)
  ARGV[i].nil? ? default : ARGV[i]
end

def get_arg_in_range(i, range, default=nil)
  val = default.nil? ? get_arg(i).to_i : get_arg_opt(i, default).to_i
  range.include?(val) ? val : report_error("value #{val} is out of range")
end

action = get_arg(0)
port = get_arg(1)

if action == 'dump'
  output_file = get_arg(2)
  initial_sector = get_arg_in_range(3, 0..MAX_SECTORS - 1, 0)
  left = MAX_SECTORS - initial_sector
  sector_count = get_arg_in_range(4, 1..left, left)
  dump_rom(port, output_file, initial_sector..(initial_sector + sector_count - 1))
elsif action == 'erase'
  initial_sector = get_arg_in_range(2, 0..MAX_SECTORS - 1, 0)
  left = MAX_SECTORS - initial_sector
  sector_count = get_arg_in_range(3, 1..left, left)
  erase_sectors(port, initial_sector..(initial_sector + sector_count - 1))
elsif action == 'burn'
  input_file = get_arg(2)
  initial_sector = get_arg_in_range(3, 0..MAX_SECTORS - 1, 0)
  burn_rom(port, input_file, initial_sector)
else
  abort "Error: unknown action '#{action}'"
end
