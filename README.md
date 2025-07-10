# UMN Theme for Typst/Touying

[Touying](https://touying-typ.github.io/) is a slide-creating package for
[Typst](https://typst.app/docs).

This theme is a slight simplification of the "university" theme shipped with Touying
that uses the UMN colors by default.

There are no versions and there is no package (kinda).
Clone this repository and then run the `just` recipes in order to install it.
```
git clone https://github.com/tomeichlersmith/typst-touying-umn-theme.git
cd typst-touying-umn-theme
just install # copy to install location
just install-dev # symlink for dev
```
The [justfile](justfile) holds the recipes so look there if you want to avoid installing `just`.
I recently installed [uv](https://docs.astral.sh/uv/getting-started/installation/) which helps me
install and run Python/PiP packages quickly so that's how I interact with `showman`.

The [main.typ](main.typ) file is the testing ground I've used to play around with the theme,
so you can look into it for examples on how to use it.
