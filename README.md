# DefaultFolderXController
An Objective-C singleton for controlling Default Folder X 5.1.6 or later

## What does it do?
Default Folder X (https://www.stclairsoft.com/DefaultFolderX/) is a macOS utility that enhances Open and Save dialogs in all applications. Its intent is to provide users with faster navigation in file dialogs, but there are situations where that may interfere with the intended workflow in an application. This class uses the ScriptingBridge.framework to allow developers to control Default Folder X via AppleScript. It currently just allows you to disable and enable Default Folder X on the fly.

## Why do I care?
If you're a developer who's written a sandboxed app, there may be situations where you need to obtain access to files by prompting the user with an Open dialog. In that case, you want to specify the initial path for the Open dialog, and you **don't** want Default Folder X to change that when the file dialog comes up, regardless of the end-user's settings.

DFXController allows you to tell Default Folder X to disable itself temporarily so you can just pop up that Open dialog and have the user click the Open button to give the sandbox access to a specific folder.

## A request
Please think carefully about how the user will be affected by not having Default Folder X in a particular file dialog. Getting access to a pre-determined directory is the one case I can think of where the user will not want to navigate elsewhere. Other situations, like exporting to a specific folder, may seem like candidates for disabling Default Folder X, but users may have workflows in which they want to store files in a different location. Don't disable Default Folder X on them if they may want to navigate elsewhere.
