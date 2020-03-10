#ifndef PS2KBR_PS2_COMMAND_H
#define PS2KBR_PS2_COMMAND_H

#include <Arduino.h>

// PS2 protocol commands
#define PS2_COMMAND_LED_STATE           0xED
#define PS2_COMMAND_RESEND              0xFE
#define PS2_COMMAND_RESET               0xFF

struct ps2_command {
    uint8_t type;
    uint32_t data;
    uint8_t len;

    static ps2_command reset() {
        return ps2_command(PS2_COMMAND_RESET, PS2_COMMAND_RESET, 1);
    }

    static ps2_command resend() {
        return ps2_command(PS2_COMMAND_RESEND, PS2_COMMAND_RESEND, 1);
    }

    static ps2_command led_state(uint8_t leds) {
        return ps2_command(PS2_COMMAND_LED_STATE, uint32_t(leds) << 8 | PS2_COMMAND_LED_STATE, 2);
    }

    ps2_command() : type(0), data(0), len(0) {}
    ps2_command(uint8_t type, uint32_t data, uint8_t len) : type(type), data(data), len(len) {}
    ps2_command(const ps2_command& other) : type(other.type), data(other.data), len(other.len) {}
    ps2_command(volatile ps2_command& other) : type(other.type), data(other.data), len(other.len) {}
    ps2_command(ps2_command &other) : type(other.type), data(other.data), len(other.len) {}

    volatile ps2_command& operator=(const volatile ps2_command& other) volatile {
        type = other.type;
        data = other.data;
        len = other.len;
        return *this;
    }

    uint8_t curr() volatile { return data; }

    uint8_t next() volatile {
        if (len > 0) {
            data >>= 8;
            len--;
        }
        return data;
    }

    bool completed() const volatile {
        return len == 1;
    }
};

#endif
