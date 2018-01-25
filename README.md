# goto
Bash completion for fast project navigation.

## Prerequisites

* `bash-completion` 

## Installation

1. Make sure you installed all prerequisites *(Use Homebrew on OSX)*.

2. Clone this project
  ```bash
  git clone https://github.com/haensl/goto.git
  ```

3. Link [`goto`](goto) to bash completion
  ```bash
  # create the directory if it does not exist
  # mkdir /etc/bash_completion.d
  ln -s <path/to/goto>/goto /etc/bash_completion.d/
  ```

  On OSX if you installed bash-completion via Homebrew use:

  ```bash
  ln -s <path/to/goto>/goto $(brew --prefix)/etc/bash_completion.d/
  ```

4. Set the `GOTOPATH` environment variable to point to your project folder(s)
  ```bash
  echo "export GOTOPATH=<path-to-your-projects>" >> ~/.bashrc
  ```

  **Hints:**

  * On OSX substitute `.bashrc` with `.bash_profile`.

  * You can specify multiple project folders by separating them via `:` (colons), e.g. `export GOTOPATH="${HOME}/code:${HOME}/sites"`

5. Add the [`goto` function](goto-func.sh) to your `.bashrc`/`.bash_profile`
  ```bash
  echo "source <path/to/goto>/goto-func.sh" >> ~/.bashrc
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
