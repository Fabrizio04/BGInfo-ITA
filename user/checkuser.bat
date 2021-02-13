@echo off
if exist "C:\Program Files\BGInfo\cmd\%username%.txt" (
set /p lang4=<"C:\Program Files\BGInfo\cmd\%username%.txt"
)