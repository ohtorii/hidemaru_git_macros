@echo off
REM 
REM 差分プログラムを起動後にファイルを削除するバッチ
REM 
REM 引数
REM %1 差分プログラムへのパス
REM %2 比較するファイル１
REM %3 比較するファイル１を削除するかどうか(delete - 削除する、delete以外 - 削除しない)
REM %4 比較するファイル２
REM %5 比較するファイル２を削除するかどうか(delete - 削除する、delete以外 - 削除しない)
REM 
REM 

setlocal
set DIFF_TOOL=%~1
set FILE1=%~2
set FILE1_TO_REMOVE=%3
set FILE2=%~4
set FILE2_TO_REMOVE=%5


"%DIFF_TOOL%" "%FILE1%" "%FILE2%"

if "%FILE1_TO_REMOVE%"=="delete" del /F "%FILE1%"
if "%FILE2_TO_REMOVE%"=="delete" del /F "%FILE2%"
