@echo off
chcp 65001
set NIMI_LIPU=lipu

setlocal enabledelayedexpansion

set TENPO_OPEN=%time%

if not defined NIMI_LIPU (
    echo [pakala] NIMI_LIPU li lon ala.
    exit /b 1
)

if not exist tenpo mkdir tenpo

call D:\Softwares\texlive\2026\bin\windows\pdflatex.exe -output-directory=tenpo -interaction=batchmode lipu.tex >nul 2>&1
set NANPA_PINI=%ERRORLEVEL%

if %NANPA_PINI% neq 0 (
    echo [pakala] pali li pakala. nanpa pini ni li %NANPA_PINI%.
    exit /b %NANPA_PINI%
)

if exist ".\tenpo\lipu.pdf" (
    move ".\tenpo\lipu.pdf" ".\%NIMI_LIPU%.pdf" >nul
    echo [pona] lipu pana li %NIMI_LIPU%.pdf
) else (
    echo [pakala] tenpo\lipu.pdf li lon ala.
    exit /b 1
)

set TENPO_PINI=%time%
for /f "delims=" %%a in ('powershell -command "& { $start = [datetime]'%TENPO_OPEN%'; $end = [datetime]'%TENPO_PINI%'; $diff = $end - $start; Write-Output $diff.TotalSeconds }"') do set TENPO_PALI=%%a
echo [sona] tenpo pali li %TENPO_PALI%''.

endlocal