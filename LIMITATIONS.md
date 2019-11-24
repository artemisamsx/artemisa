# Artemisa Computer System - Known Limitations

## System

### Game still executes after reset

Artemisa uses static RAM memory technology instead of dynamic RAM. Dynamic RAM was the norm during the 80s due to the expensive cost of static memories. But nowadays are the best option due to the current cost and the fact that they make the memory circuits smaller and simpler.

The main difference between static and dynamic RAM is that the volatility of the former do not depend upong refreshing. Dynamic RAM is based on capacitors whose load determines a logic 0 or 1 value. Capacitors are discharged with the time, and they must be refreshed, charged again to its maximum level with some periodicity. In contrast, static RAM maintains its state as long as power is supplied.

This has a important implication. During a system reset triggered by a reset button press, the reset signal typically stops the refresh actions on the dynamic memory. The human typically would keep the reset button pressed for more than 100ms. That is too much time for the dynamic memory to maintain its bits intact without refresh, and they are typically lost. In other words, this is somehow a memory reset action. In contrast, static memories are not affected by reset signals. And their contents remain intact after system is reset.

Most of the times, you will not even notice it. The MSX system assumes the memory is blank on boot. So the system will init as after power is connected. But from time to time, you will see how the previous software that was running in the computer is runned again. This is caused by that software to be placed in a region of memory the MSX BIOS detects as executable. After reset the program is still there. So the BIOS passes its control to it and causes its code to be executed again.

A well known case of this is the Opera Soft's game Livingstone Supongo. The program is loaded in a memory page such that it contains a header that causes the BIOS to run it again after reset.

There is no simple way to clean up static memories after reset without using complex circuits. If you have this problem, the best thing to do is to cause a hard reset by disconnecting the power and connecting it again.

## PS2 Keyboard

The unexpensive way of using a keyboard in your Artemisa computer is through the PS2 Keyboard Adapter. However, it presents some limitations you should know.

### Key ghosting

Key ghosting is the adverse effect caused by pressing three keys or more simultaneously in your keyboard. When this happens, the keyboard matrix is unable to detect the third key that was pressed. The reason is perfectly described [in this article](https://www.dribin.org/dave/keyboard/one_html/).

During regular keyboard typing, you should not experience any problem. The keyboard matrices use to take into account that the function keys will be used together. So CTRL, ALT, SHIFT, etc, can be combined together with other keys without any problem. However, when keyboard is used as game controller, you will need to press several non-function keys at the same time. This is where problems arise.

Most PC keyboards are very sensible to key ghosting. And there is no solution other than use a different set of keys when you detect ghosting.

A [very well known](https://forum.defold.com/t/spacebar-doesnt-work-when-pressing-up-and-left-solved/12642/3) conflicting combination is `UP` + `LEFT` + `SPACE`. If this happens, you can define keys in your game to use OPQA or WASD instead.
