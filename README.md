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

Installed current to /Users/<your account>/.tlenv/versions/current


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


## Plugins

* [texlive-install](https://github.com/munepi/tlenv-texlive-install): TeX Live installation
* [texlive-install-darwin](https://github.com/munepi/tlenv-texlive-install-darwin): TeX Live installation for macOS (Darwin)
* [texlive-install-haranoajifonts](https://github.com/munepi/tlenv-texlive-install-haranoajifonts): install the latest HaranoAjiFonts when installing TeX Live
* [shared-texmflocal](https://github.com/munepi/tlenv-shared-texmflocal): shared TEXMFLOCAL
* [tlnet-texjporg](https://github.com/munepi/tlenv-tlnet-texjporg): setup tlnet on [texlive.texjp.org](https://texlive.texjp.org/) for the previous TeX Live versions

## License

This program is licensed under the terms of the MIT License.

--------------------

Munehiro Yamamoto
https://github.com/munepi
