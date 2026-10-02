# Accessibility

This repository demonstrates an iOS to-do app using TCA, MVVM, and SwiftUI.

## Current implementation and limitations

The [task-list interface](TCA-MVVM-Todolist/TCA-MVVM-Todolist/TCA_MVVM_TodolistApp.swift)
uses a native text field labelled New Task, a text-labelled Add button,
and task titles in a list.

Task completion uses an icon-only button without an explicit task-specific
accessibility label or value. This needs review so that the action and
current completion state are understandable without seeing the icon.

Full accessibility support is not established. Validate adding and completing
tasks with VoiceOver and Voice Control, focus after changes, the largest
text sizes, contrast, and keyboard interaction. State-management tests do
not establish that the rendered interface is accessible.

## Report an accessibility problem

[Open an issue](https://github.com/arieltyson/SwiftUI-ToDo-TCA-MVVM/issues/new) describing
the affected screen, steps to reproduce, expected and actual behaviour,
and the app version or commit. Include your device, iOS version, and
relevant assistive technology or accessibility settings.
