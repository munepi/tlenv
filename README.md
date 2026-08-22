# tlenv: TeX Live version manager tool on Unix-like systems

[TeX Live](https://tug.org/texlive/) version manager tool inspired by [rbenv](https://github.com/rbenv/rbenv)

tlenv is a port of rbenv; this release tracks [rbenv v1.3.2](https://github.com/rbenv/rbenv/releases/tag/v1.3.2).

Run `tlenv help` for the manual page, or `tlenv help <command>` for help on a
specific command.


## Getting started

### 1. Install tlenv in local

``` shell
git clone https://github.com/munepi/tlenv.git ~/.tlenv
cd ~/.tlenv
git clone https://github.com/munepi/tlenv-texlive-install.git  plugins/texlive-install
```

### 2. Setup tlenv

Run `tlenv init` and it will append the necessary line to the startup file of
your shell:

``` shell
~/.tlenv/bin/tlenv init
```

`tlenv init` detects the current shell by inspecting the parent process. You
can also name the shells explicitly, for example `tlenv init bash zsh fish`.
Restart your shell afterwards so that the changes take effect.

If you prefer to configure your shell by hand, add the following instead:

``` shell
export PATH=~/.tlenv/bin:${PATH}
eval "$(tlenv init - bash)"   # replace `bash' with the name of your shell
```

#### Shell completions

The **bash** completion script ships with tlenv and is loaded by the
`tlenv init` mechanism.

The **zsh** completion script also ships with tlenv, but it needs to be added
to `FPATH` before zsh can discover it. One way to do this is to edit
`~/.zshrc`:

``` shell
FPATH=~/.tlenv/completions:"$FPATH"

autoload -Uz compinit
compinit
```

### 3. Try to install the latest TeX Live version

``` shell
tlenv install current

...

==> Installed current to /Users/<your account>/.tlenv/versions/current


NOTE: to activate this TeX Live version as the new default, run: tlenv global current
```

Enjoy Happy TeXing!


## Installing previous TeX Live versions

You can install TeX Live from previous versions, such as TeX Live 2010 frozen, up to the latest version.

For example, if you use TeX Live `YYYY` (year) frozen, then you can install TeX Live `YYYY` by executing the following.

``` shell
tlenv install YYYY
```

Additionally, you can specify other mirror historic archive for the environment variable `TEXLIVE_INSTALL_TLNET` as shown below.

``` shell
TEXLIVE_INSTALL_TLNET=https://<MIRROR HISTORIC ARCHIVE>/systems/texlive/YYYY/tlnet-final/ tlenv install YYYY
```

The list of TUG official mirrors are [Historic archive of TeX material - TeX Users Group](https://tug.org/historic/).


## Passing options to install-tl

Arguments after `--` are passed through to the TeX Live installer `install-tl`.

``` shell
tlenv install current -- -no-verify-downloads
```


## Plugins

* [texlive-install](https://github.com/munepi/tlenv-texlive-install): TeX Live installation
* [texlive-install-haranoajifonts](https://github.com/munepi/tlenv-texlive-install-haranoajifonts): install the latest HaranoAjiFonts when installing TeX Live
* [shared-texmflocal](https://github.com/munepi/tlenv-shared-texmflocal): shared TEXMFLOCAL
* [tlnet-texjporg](https://github.com/munepi/tlenv-tlnet-texjporg): setup tlnet on [texlive.texjp.org](https://texlive.texjp.org/) for the previous TeX Live versions

## License

This program is licensed under the terms of the MIT License.

--------------------

Munehiro Yamamoto
https://github.com/munepi
