@echo off
if exist "C:\BGInfo\cmd\%username%.txt" (
set /p lang4=<"C:\BGInfo\cmd\%username%.txt"
)