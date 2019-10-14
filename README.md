# colliding-extensions-in-swift

This repo is a _thorough_ answer to the question

> What happens if multiple modules implement the same extension to a Foundation type?

Let's try to answer it.

## Project Setup
What you've got here are three projects that all declare an instance variable `collision` on `String`:

1. StringExtensionOne is a Swift Package that declares its value to be `"String Extension One"`
1. StringExtensionTwo is a Swift Package that declares its value to be `"String Extension Two"`
1. WhenModulesCollide is a project that declares its value to be `"String+Collision.swift"`

Currently, the `WhenModulesCollide` project links to both the `StringExtensionOne` and `StringExtensionTwo` packages. 