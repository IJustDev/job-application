# Applications / Bewerbungen

This repository is a small side project of mine that creates nice looking applications with a single yaml file.
It is used for my plan, to contact all companies within a radius of 20 kilometers.

## Example
Take a look at the [CV][cv].

Or take a look at the letter, created with this repository [by clicking here][letter].

## Prerequisites
There are some prerequisites which I can't even tell you exactly. But the things you need for sure are:
- pandoc - for replacing latex files content with yaml files data.
- make - for easy handling all file generations.
- latex - for compiling the document to an pdf
- latex fonts (debian package: texlive-fonts-extra) - for fontawesome icons

## Usage
There is a file called [`data.yml`][data.yml]. Open it up and enter your credentials, it is very straight forward.

```sh
make output/application.tar.gz
```

This will then create a tar archive containing two files. `cv.pdf` and `letter.pdf`.

### Non-German Users
If you live in the US, or in another of the almost two hundred non-German lands please remember to open up [`developercv.cls`][developercv] and change all the German terms like `Schullaufbahn` to the english equivalent.

Also take a look at the [`src/letter.tex`][letter.tex] file to change the default text that stays the same for every company to a less German sounding one.

[cv]: ./example/cv.pdf
[letter]: ./example/letter.pdf
[letter.tex]: ./example/letter.pdf
[data.yml]: ./data.yml
[developercv]: ./developercv.cls
