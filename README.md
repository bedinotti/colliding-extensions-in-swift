# colliding-extensions-in-swift

This repo is a _thorough_ answer to the question

> What happens if multiple modules implement the same extension to a Foundation type?

Let's try to answer it.

## Project Setup
What you've got here are three projects that all declare an instance variable `collision` on `String`:

1. StringExtensionOne is a Swift Package that declares its value to be `"String Extension One"`
1. StringExtensionTwo is a Swift Package that declares its value to be `"String Extension Two"`
1. WhenModulesCollide is a project that declares its value to be `"String+Collision.swift"`

The `WhenModulesCollide` project links to both the `StringExtensionOne` and `StringExtensionTwo` packages. However, neither packages are imported in `ViewController.swift`. Similarly, and the local module's declaration in `String+Collision.swift` is commented out. With no declaration anywhere, the code doesn't compile.

Experiment with different combinations of:
- importing either, neither, or both of these packages in `ViewController.swift`
- uncommenting the local module's implementation in `String+Collision.swift`

Build & run the code after making your change. You'll see the result in the UI & in the logs, or in Xcode if there's an error. 

![I have no idea what I'm doing](./images/no-idea-what-im-doing.gif "I have no idea what I'm doing")

## The answers

Think of what you'd expect to happen in these situations. And if you don't feel like investigating, just click to see the answer.

<details>
  <summary>What happens if the `collision` property is never defined?</summary>

  That's the state this project starts in. It doesn't compile and gives you an error:

  ```
  Value of type 'String' has no member 'collision'
  ```

  ![`String` has no member called `collision`](./images/string-has-no-member-called-collision.png)

</details>

<details>
  <summary>What happens if I either import a module or enable the local module's definition, but not both?</summary>

  Whichever extension you enabled to be linked to your code will win.

  - If you import `StringExtensionOne` in `ViewController.swift`, it wins:
    ![One Wins](./images/one-wins.png)
  - If you import `StringExtensionTwo` in `ViewController.swift`, it wins:
    ![Two Wins](./images/two-wins.png)
  - If you uncomment the extension in `String+Collision.swift`, it wins:
    ![Local Module Wins](./images/local-module-wins.png)
</details>

<details>
  <summary>What happens if I import a module that collides with my local extension?</summary>

  The local extension wins. `"String+Collision.swift"` is shown in the display & in the log.

  ![Local Module Wins](./images/local-module-wins.png)
</details>

<details>
  <summary>What happens if I import two modules with conflicting extensions?</summary>

  This is a compiler error.
  
  ```
  Ambiguous use of 'collision'
  ```

  ![Ambiguous use of `collision`](./images/ambiguous-use-of-collision.png "Ambiguous use of 'collision'")
</details>

<details>
  <summary>What happens if I import two modules with conflicting extensions *and* specify a conflicting implementation in my module?</summary>

  The local extension wins. `"String+Collision.swift"` is shown in the display & in the log.

  ![Local Module Wins](./images/local-module-wins.png)
</details>