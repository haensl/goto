# goto
Bash completion for fast project navigation.

## Installation

1. Clone this project
  ```bash
  git clone https://github.com/haensl/goto.git
  ```

2. Link `goto` to bash completion
  ```bash
  # create the directory if it does not exist
  # mkdir /etc/bash_completion.d
  ln -s goto /etc/bash_completion.d/
  ```

## Usage

* Type `goto` and the start of whatever project/folder you want to navigate to into your terminal.

  E.g.
  ```
    goto gul
  ```

* Hit `<tab>` for autocompletion.

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

* Continue typing the desired project/folder name and hit enter to go there.
