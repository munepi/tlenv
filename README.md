# tlenv: TeX Live version manager tool on Unix-like systems

[TeX Live](https://tug.org/texlive/) version manager tool inspired by [rbenv](https://github.com/rbenv/rbenv)


## Getting started

### 1. Install tlenv in local

``` shell
git clone https://github.com/munepi/tlenv.git ~/.tlenv
cd ~/.tlenv
git clone https://github.com/munepi/tlenv-texlive-install.git  plugins/texlive-install
```

If you use Mac with Apple silicon, then you may install the following plugin. 

``` shell
git clone https://github.com/munepi/tlenv-texlive-install-darwin.git  plugins/texlive-install-darwin
```

### 2. Setup tlenv

``` shell
export PATH=~/.tlenv/bin:${PATH}
if which tlenv > /dev/null; then eval "$(tlenv init -)"; fi
```

### 3. Try to install the latest TeX Live version

``` shell
tlenv install current

...

Installed current to /Users/munepi/.tlenv/versions/current


NOTE: to activate this TeX Live version as the new default, run: tlenv global current
```

Enjoy Happy TeXing!


## Plugins

* [texlive-install](https://github.com/munepi/tlenv-texlive-install): TeX Live installation
* [texlive-install-darwin](https://github.com/munepi/tlenv-texlive-install-darwin): TeX Live installation for macOS (Darwin)
* [shared-texmflocal](https://github.com/munepi/tlenv-shared-texmflocal): shared TEXMFLOCAL
* [tlnet-texjporg](https://github.com/munepi/tlenv-tlnet-texjporg): setup tlnet on [texlive.texjp.org](https://texlive.texjp.org/) for the previous TeX Live versions


## License

This program is licensed under the terms of the MIT License.

--------------------

Munehiro Yamamoto
https://github.com/munepi
