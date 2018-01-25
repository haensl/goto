# goto
Bash completion for fast project navigation.

## Prerequisites

* `bash-completion`

## Installation

### Linux

1. Make sure you installed all prerequisites.

2. Clone this project
  ```bash
  git clone https://github.com/haensl/goto.git
  ```

3. Let make do it's thing
  ```bash
  make install
  ```

### OSX

1. Tap my formulae
  ```bash
  brew tap haensl/haensl
  ```

2. Install goto via Homebrew
  ```bash
  brew install goto
  ```

## Usage

![Intro](goto-intro.gif)

* Type `goto` and the start of whatever project/folder you want to navigate to in your terminal.

  E.g.
  ```
    goto gul
  ```

* Hit `<tab>` for autocompletion. If there are several options, this will complete the directory name as far as possible.

  E.g.
  ```
    goto gulp-embed-
  ```

* Hit `<tab>` again for a list of possible completions.

  E.g.
  ```
    goto gulp-embed-
    gulp-embed-json gulp-embed-svg
  ```

* Continue typing/autocompleting the desired project/folder name and hit enter to go there.

### [CHANGELOG](CHANGELOG.md)

### [LICENSE](LICENSE)
