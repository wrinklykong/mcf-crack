# End-of-life Message
After much digging and testing, I have found out that the full version is not embedded in the game, but rather just the first level. I uploaded the farmed images I found to this repo and am archiving it. I will continue to dig to find the full version, but I do not have high hopes!

# Introduction
Mystery Case Files: Agent X is a Hidden Object game released on April 14th, 2008 for mobile phones, primarily Glu devices. This project aims to remove all paywall restritions on the game for the purpose of game preservation. This project was created from my personal quest to recover the Mystery Case Files series games.

# Preface
There is no active link for purchasing the full version of this game. The shops hosting this game have been dead for years, and there is **NO** way to directly support the creators. **I DO NOT intend on infringing the laws, regulations, and copyright of the respective copyright owners. This project is for education use and contributes to the growing effort of preserving lost mobile games.**

# Instructions
### Requirements
```
jar >= 11.0.20.1
```
### Usage
```
./script.sh <path_to_Agent_X_jar>
```
The script will output a modified `.jar` file in the current directory with all restrictions removed.

# Advanced Details
### How it works
Inside `Agent-X.jar` lives a specific file which contains all the logic for checking if the game has been purchased. To remove all restrictions, we simply replace that file in the `jar`. To do so we must first extract the `jar` contents, replace the specific file, and recompress the file so it is playable.
