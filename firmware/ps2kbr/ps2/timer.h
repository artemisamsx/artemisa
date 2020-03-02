#ifndef PS2KBR_PS2_TIMER_H
#define PS2KBR_PS2_TIMER_H

// A simpe timer to count elapsed time
class PS2Timer {
public:
  // Reset the timer to be triggered after the given milliseconds
  void reset(unsigned long m) volatile {
    _triggers_on = millis() + m;
  }

  // Check whether the timer was triggered
  bool triggered() const volatile {
    return millis() > _triggers_on;
  }
private:
  unsigned long _triggers_on;
};

#endif
