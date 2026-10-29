# lipu-jaja (Books of Yaya)

[[Toki Pona]](o_lukin_e_mi.md) | **[English]**

Here are some books written by Yaya in [Toki Pona](https://tokipona.net/).

## Books

- *NimiPiKalamaMusi*: a collection of lyrics translated to [Toki Pona](https://tokipona.net/) by Yaya.

## Folder Structure

```
README.md (document of this repository, in English)
o_lukin_e_mi.md (document of this repository, in Toki Pona)
tan/ (book template)
    lipu.tex (LaTeX file)
    pali.bat (LaTeX compilation script)
<name>/ (book)
    lipu.tex (LaTeX file)
    pali.bat (LaTeX compilation script)
.gitignore (list of ignored files)
```

## Compilation

To compile a book, one must:
1. install TeX Live 2026 in Windows;
2. change the path of TeX Live 2026 in `*/pali.bat` to your path;
3. run `pali.bat`.
