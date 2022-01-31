# HTML Favicon Plugin for DITA-OT

[![license](https://img.shields.io/github/license/jason-fox/fox.jason.favicon.svg)](http://www.apache.org/licenses/LICENSE-2.0)
[![DITA-OT 3.7](https://img.shields.io/badge/DITA--OT-3.7-blue.svg)](http://www.dita-ot.org/3.7)
[![CI](https://github.com/jason-fox/fox.jason.favicon/workflows/CI/badge.svg)](https://github.com/jason-fox/fox.jason.favicon/actions?query=workflow%3ACI)
[![Coverage Status](https://coveralls.io/repos/github/jason-fox/fox.jason.favicon/badge.svg?branch=master)](https://coveralls.io/github/jason-fox/fox.jason.favicon?branch=master)
[![Documentation Status](https://readthedocs.org/projects/tabsdita-ot/badge/?version=latest)](https://tabsdita-ot.readthedocs.io/en/latest/?badge=latest)

This is a [DITA-OT Plug-in](https://www.dita-ot.org/plugins) used to add a favicon to DITA HTML output.

<details>
<summary><strong>Table of Contents</strong></summary>

-   [Background](#background)
-   [Install](#install)
    -   [Installing DITA-OT](#installing-dita-ot)
    -   [Installing the Plug-in](#installing-the-plug-in)
-   [Usage](#usage)
-   [License](#license)

</details>

## Install

The DITA-OT Favicon Plug-in  has been tested against [DITA-OT 3.x](http://www.dita-ot.org/download). It is recommended
that you upgrade to the latest version.

### Installing DITA-OT

<a href="https://www.dita-ot.org"><img src="https://www.dita-ot.org/images/dita-ot-logo.svg" align="right" height="55"></a>

The DITA-OT Favicon Plug-in  is a file reader for the DITA Open Toolkit.

-   Full installation instructions for downloading DITA-OT can be found
    [here](https://www.dita-ot.org/3.7/topics/installing-client.html).

    1.  Download the `dita-ot-3.7.zip` package from the project website at
        [dita-ot.org/download](https://www.dita-ot.org/download)
    2.  Extract the contents of the package to the directory where you want to install DITA-OT.
    3.  **Optional**: Add the absolute path for the `bin` directory to the _PATH_ system variable.

    This defines the necessary environment variable to run the `dita` command from the command line.

```console
curl -LO https://github.com/dita-ot/dita-ot/releases/download/3.7/dita-ot-3.7.zip
unzip -q dita-ot-3.7.zip
rm dita-ot-3.7.zip
```

### Installing the Plug-in

-   Run the plug-in installation commands:

```console
dita install https://github.com/jason-fox/fox.jason.favicon/archive/master.zip
```

The `dita` command line tool requires no additional configuration.

---


## Usage



## License

[Apache 2.0](LICENSE) © 2022 Jason Fox
