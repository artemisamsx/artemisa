# Artemisa ROM image changelog

## Version 20190816

Initial version of the ROM image.

### Contents

- `$00000` [jumper conf `0000`]: MSX System v1.0 International
- `$08000` [jumper conf `0001`]: MSX System v1.0 USA
- `$10000` [jumper conf `0010`]: MSX System v1.0 Japan
- `$18000` [jumper conf `0011`]: MSX System v1.0 UK
- `$20000` [jumper conf `0100`]: MSX System v1.0 France
- `$28000` [jumper conf `0101`]: MSX System v1.0 Germany
- `$30000` [jumper conf `0110`]: MSX System v1.0 Italy
- `$38000` [jumper conf `0111`]: MSX System v1.0 Spain
- `$40000` [jumper conf `1000`]: MSX System v1.0 Arabic
- `$48000` [jumper conf `1001`]: MSX System v1.0 Korea
- `$50000` [jumper conf `1010`]: MSX System v1.0 Russia
- `$58000` [jumper conf `1011`]: Artemisa Diagnosis Tool 0.1

### MSX-System flags

```asm
OPTM    EQU     0
NDEVFIX EQU     1
SLOTFIX EQU     0
```
