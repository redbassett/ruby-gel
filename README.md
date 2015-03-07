# ruby-gel
A Ruby module containing a library of lighting "[gels](https://en.wikipedia.org/wiki/Color_gel)" for stage lighting.

## The Gel Library
The gels available in the module are found in the `data` directory, in the form of `.csv` files. Each file represents a gel collection.

## Compiling Gels
To avoid unescesary loading and parsing of `.csv` files, the gel library is compiled into native Ruby code. To do this, run the `compile-gels` executable with the name of each `.csv` file to compile:

```$ ./compile-gels rosco lee gam```

## Using the Module
Once compiled, the module can be required, and any of its API methods can be used:

```
Gel::name 'R00'
# Dempster Open

Gel::rgb 'R39'
# { red: 255, green: 64, blue: 255 }
```
