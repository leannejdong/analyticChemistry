# Git for freshers

Git is a version control tool that allows you to manage versions of your files on your local machine. To be able to use it with Github properly, you need to install Git. Let’s learn how to install Git on a PC or a Mac.

In this tutorial we provide windows instructions only.

## Git install

To install Git on Windows, download the [Git Executable File](https://git-scm.com/downloads).

1. Installing Git on Windows

Visit the official Git website: https://git-scm.com/

Download the latest version of Git for Windows and follow the installation wizard.

https://phoenixnap.com/kb/how-to-install-git-windows

## Configure git on windows

Open the Git Bash terminal, which is installed along with Git.

Set your username and email:

```
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```
## Generating SSH Keys

SSH keys are essential for secure communication with remote repositories.


```
# Generate SSH key
ssh-keygen -t rsa -b 4096 -C "your.email@example.com"
```

You will be asked for an optional passphrase. It’s permissible to click enter and leave this blank.

You will also be asked for a location to save the GitHub SSH keys on Windows. Again, just click enter to accept the default location, which is the .ssh folder under the user’s home directory.

The Windows GitHub SSH keys live in the .ssh folder under the current user’s home directory. The following directory listing under the .ssh folder of a user named hugh shows the two files created by the ssh-keygen tool:

```
PS C:\Users\hugh\.ssh> dir
LastWriteTime      Name
-------------      ----
1/1/2022           id_rsa
1/1/2022           id_rsa.pub
```



Open the ssh public key `id_rsa.pub` in a text editor such as Notepad++, simply ``select all" and copy the key.
Copy the public GitHub SSH key and store this value as a registered SSH key in your GitHub account.

With the SSH key copied, log into GitHub, navigate to your account settings, and paste the public key as a new SSH key.


## Creating a Git Repository

Navigate to your project folder and initialize a Git repository:

```
cd path/to/your/project
git init
```

## Committing changes

add files to staging area

```
git add file1.txt file2.txt

```
Commit the changes
```
git commit -m "Your commit message"
```

## Creating a remote repository on github

## Connecting Local and Remote Repositories

```
git remote add origin <remote_repository_url>
```

Push your changes to the remote repo

```
git push -u origin master
```

## Signing commits

```
gpg --gen-key
```

List your GPG keys
```
gpg --list-secret-keys --keyid-format LONG
```

Copy the GPG key (after "sec") and configure Git to use it:

```
git config --global user.signingkey <your_gpg_key>
```
Sign your commits

```
git commit -S -m "Your signed commit message"
```




