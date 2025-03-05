# 📂 Batch File Directory Manager

## 📖 Overview

This Batch File Directory Manager is a command-line utility that allows users to manage directories and files on their Windows system. With a simple menu interface, users can create new directories, create files, rename files, and navigate through directories. This script utilizes the power of batch scripting to provide a user-friendly experience for file management.

## 🚀 Features

- **📁 Create a New Directory**: Easily create a new directory in the current path.
- **📄 Create a New File**: Create a new file with a specified name.
- **✏️ Rename a File**: Rename an existing file.
- **📂 Enter a Directory**: Navigate into a specified directory.
- **🌳 Display Directory Structure**: View the current directory structure in a tree format.

## 🛠️ Technologies Used

- **Batch Scripting**: The script is written in Windows Batch, utilizing built-in commands for file and directory management.

## 📋 Prerequisites

- A Windows operating system (Windows 7 or later).
- Basic knowledge of command-line operations.

## ⚙️ How to Use

1. **📥 Download the Script**
   - Copy the provided batch script code into a text file and save it with a `.bat` extension (e.g., `DirectoryManager.bat`).

2. **🖥️ Run the Script**
   - Double-click the `.bat` file to run it. A command prompt window will open displaying the main menu.

3. **🛠️ Select an Option**
   - Choose an option from the menu by entering the corresponding number (1-5):
     - **1**: Create a new directory
     - **2**: Create a new file
     - **3**: Rename a file
     - **4**: Enter into a directory
     - **5**: Exit the program

4. **📂 Follow Prompts**
   - Follow the prompts to complete your chosen action. The script will provide feedback on the success or failure of each operation.

## 🖼️ Interface

When you run the script, you will see an interface similar to the following:

```
===========================
      Main Menu
===========================
1. Create a new directory
2. Create a new file
3. Rename a file
4. Enter into the directory
5. Exit
===========================
Select an option (1-5):
```

### Example of Directory Structure Display

When you choose to display the directory structure, the output will look like this:

```
Current Directory Structure:
Folder PATH listing for volume C:
Volume serial number is XXXX-XXXX
C:.
├───Folder1
│   ├───Subfolder1
│   └───Subfolder2
├───Folder2
└───File1.txt
```

## 🛠️ Troubleshooting

- **Invalid Choice**: If you enter an invalid option, the script will prompt you to try again.
- **File/Directory Not Found**: Ensure that the file or directory you are trying to access exists.
- **Permission Issues**: Make sure you have the necessary permissions to create or modify files and directories in the specified location.

## 📜 License

This project is open-source and available for anyone to use and modify. Feel free to contribute!

---