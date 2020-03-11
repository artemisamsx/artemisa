#ifndef PS2KBR_PS2_BUFFER_H
#define PS2KBR_PS2_BUFFER_H

// A buffer of a generic size.
template<class T, unsigned int SIZE>
class ps2_buffer {
public:
  ps2_buffer() : _read(0), _write(0), _ravail(0), _wavail(SIZE) {}

  // Write a new element to the buffer.
  // Return true if succesful, false if buffer was full.
  bool write(T val) volatile {
    if (_wavail == 0) {
      return false;
    }
    _data[_write] = val;
    _ravail++;
    _wavail--;
    _write++;
    if (_write == SIZE) {
      _write = 0;
    }
    return true;
  }

  // Write len elements from val into the buffer.
  // Return true if succesful, false if buffer cannot allocate len elements.
  bool write(T *val, uint8_t len) volatile {
    if (_wavail < len) {
      return false;
    }
    for (int i = 0; i < len; i++) {
      write(val[i]);
    }
    return true;
  }

  // Read an element from the buffer.
  // Return true if succesful, false if buffer was empty.
  bool read(volatile T &val) volatile {
    if (_ravail == 0) {
      return false;
    }
    val = _data[_read];
    _ravail--;
    _wavail++;
    _read++;
    if (_read == SIZE) {
      _read = 0;
    }
    return true;
  }

  // Peek the next element to be read, without consuming it. 
  // Return true if succesful, false if buffer was empty.
  bool peek(volatile T& val) const volatile {
    if (_ravail == 0) {
      return false;
    }
    val = _data[_read];
    return true;
  }

  // Consume the current element and peek the next one. 
  // Return true if succesful, false if current element was the last remaining.
  bool peek_next(volatile T& val) volatile {
    read(val);
    return peek(val);
  }

  // Get the element at the given offset. This do not alter the state of the buffer.
  // Return true if the element is valid, false otherwise.
  bool get(uint16_t offset, T &val) volatile const {
    if (offset < _ravail) {
      val = _data[(_read + offset) % SIZE];
      return true;
    }
    return false;
  }

private:
  T _data[SIZE];
  uint16_t _read;
  uint16_t _write;
  uint16_t _ravail;
  uint16_t _wavail;
};

#endif
