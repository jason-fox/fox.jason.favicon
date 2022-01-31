# HTML Favicon Plugin for DITA-OT

[![license](https://img.shields.io/github/license/jason-fox/fox.jason.favicon.svg)](http://www.apache.org/licenses/LICENSE-2.0)
[![DITA-OT 3.7](https://img.shields.io/badge/DITA--OT-3.7-blue.svg)](http://www.dita-ot.org/3.7)

This is a [DITA-OT Plug-in](https://www.dita-ot.org/plugins) used to add a favicon to DITA HTML output.

A favicon is a file containing a small brand image icon, associated with a particular website or web page.  A web designer
can create such an icon and  upload it to a website, and graphical web browsers can then make use of it by displaying the icon 
on the associated browser tab.

![](https://jason-fox.github.io/fox.jason.favicon/favicon.png)

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


#### Creating HTML output

To run, use any `html` transform and add the `args.favicon`, `args.faviconpath` and `args.faviconroot` parameters.
The new `args.favicon.*` parameters follow the existing syntax used by DITA-OT for CSS files.

```console
PATH_TO_DITA_OT/bin/dita -f [html5|xhtml]  -o out -i PATH_TO_DITAMAP \
  --args.favicon=FILENAME \
  --args.faviconpath=DESTINATION_PATH_OF_FAVICON  \
  --args.faviconroot=SOURCE_PATH_OF_FAVICON \
```

To refer to an exisiting file hosted on a server, use a URL as the `args.faviconpath` parameter

```console
PATH_TO_DITA_OT/bin/dita -f [html5|xhtml]  -o out -i PATH_TO_DITAMAP \
  --args.favicon=FILENAME \
  --args.faviconpath=https://example.com/static/assets
```

### Parameter Reference

-  `args.favicon` - Specifies the name of the favicon file. The value of this parameter should be only the file name. The absolute path
    to the parent directory should be specified with `args.faviconroot`. Defaults to [`favicon.svg`](/includes/favicon.svg) - the name of
    the default image found within the plugin itself

-  `args.faviconpath` - Specifies the destination directory to which the favicon file is copied (relative to the output directory). Corresponds
    to the XSLT parameter `FAVICONPATH`. DITA-OT will copy the file to this location.

> Tip: If `args.faviconpath` is not set, the favicon file will be copied to the root level of the 
> output folder. To move the favicon file to an output subfolder named `/static/assets`, set 
> `args.faviconpath` to `/static/assets`.

-  `args.faviconroot` - specifies the source directory that contains the favicon file.
    DITA-OT will copy the file from this location. Defaults to the image found within the plugin itself

> Important: Enter the absolute path to the parent directory of the favicon file specified with 
> `args.favicon`.

## License

[Apache 2.0](LICENSE) © 2022 Jason Fox
