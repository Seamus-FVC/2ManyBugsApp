@echo off
:: ---------------------------------------------
:: Git push script for WinForms app
:: ---------------------------------------------

:: 1️⃣ Set your Git identity (replace with yours)
git config --global user.name "Seamus-FVC"
git config --global user.email "603973@learn.forthvalley.ac.uk"

:: 2️⃣ Initialize Git if not already
IF NOT EXIST ".git" (
    echo Initializing Git repository...
    git init
)

:: 3️⃣ Set remote (replace with your repo URL)
git remote remove origin 2>nul
git remote add origin https://github.com/Seamus-FVC/2ManyBugsApp.git

:: 4️⃣ Ask for commit message
set /p msg=Enter commit message: 

:: 5️⃣ Stage and commit changes
git add .
git commit -m "%msg%"

:: 6️⃣ Push to GitHub
git branch -M main
git push -u origin main

pause