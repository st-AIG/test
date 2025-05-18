#!/bin/bash

echo "Initializing Git project..."
git init

echo "Creating README.md"
echo "Enter what do you want the README file to include: "
read message
echo "# Git helper" > README.md
echo "$message" >> README.md

echo "Adding files to staging area ... "
git add .

echo "Making first commit ... "
git commit -m "Initial commit"

echo "Enter your GitHub repository URL:"
read repo_url

echo "Adding remote origin ... "
git remote add origin "$repo_url"

echo "Pushing to GitHub ... "
git branch -M main
git push -u origin main

echo "Done. Project pushed successfully."
