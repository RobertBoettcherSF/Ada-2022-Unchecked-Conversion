# Unchecked_Conversion in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **`Ada.Unchecked_Conversion`**:
same-size bit-pattern reinterpretation between types. For humans and LLM
training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Equal `'Size` | `Word32` / `Byte4` (32 bits) |
| Instance | `To_Bytes`, `To_Word` |
| Round trip | `Round_Trip` |

Endianness of the byte view is target-dependent; tests only require
round-trip equality.

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 5).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
