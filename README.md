# goto [![CircleCI](https://circleci.com/gh/haensl/goto.svg?style=svg)](https://circleci.com/gh/haensl/goto)

Bash completion for fast project navigation.

## Prerequisites

* `bash`: goto is written for bash (and compatible) shells.
* `bash-completion`: ensure that your shell has completion available. You can check by running:
  ```shell
  (command -v complete &> /dev/null && echo 'You have bash completion.') || echo 'You do not have bash completion'
  ```

## Installation

1. Get a hold of goto. You can either clone this repository or [download the latest release](https://github.com/haensl/goto/releases).

2.  Load goto in your Bash profile (usually `~/.bashrc` on Linux and `~/.bash_profile` on MacOS)

```
	source /path/to/goto/goto
```

Specify the directories that contain your projects via the `GOTOPATH` environment variable. To specify multiple directories, separate them via : (colon), e.g.:

```
  export GOTOPATH="${HOME}/code:${HOME}/sites"
```

You can view installation instructions by running

```
  make install
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
