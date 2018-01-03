# goto
Bash completion for fast project navigation.

## Installation

1. Clone this project
  ```bash
  git clone https://github.com/haensl/goto.git
  ```

2. Adjust project path

      Open the [`goto`](goto) file in your favorite editor and adjust the `path` variable to point to the location where you store your projects in line 7. Mine live at `~/code/`
  ```bash
    $ vim goto
  ```
  ```bash
    #[...]
    path=${HOME}/code/ #adjust this line
  ```

3. Link `goto` to bash completion
  ```bash
  # create the directory if it does not exist
  # mkdir /etc/bash_completion.d
  ln -s goto /etc/bash_completion.d/
  ```

## Usage

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
