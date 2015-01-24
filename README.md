> NOTE this repository is no longer used. Documentation is in the main phpspec repository.

# phpspec-site

phpspec.net source code

## reStructuredText

The phpspec docs are written using reStructuredText.

> reStructuredText is an easy-to-read, what-you-see-is-what-you-get plaintext markup syntax and parser system.

You can follow a primer on using reStructuredText at http://sphinx-doc.org/rest.html
and find further details about reStructuredText at http://docutils.sourceforge.net/rst.html

## Sphinx

The phpspec docs are built using Sphinx http://sphinx-doc.org/

## Building the phpspec docs locally

To build the phpspec docs locally, you will need to install Sphinx.

Installation varies between systems and more details about installing Sphinx for
your system can be found at http://sphinx-doc.org/install.html

Installation on Debian/Ubuntu

    $ sudo apt-get install python-sphinx

Once you have installed Sphinx on your local machine you can now build the
phpspec docs.

### Building HTML documentation

Perhaps the simplest format of documentation to generate with Sphinx is HTML.

In a terminal, navigate to the location of the documentation and run the following
command.

    $ sphinx-build -b html -d _build/doctrees . _build/html

Sphinx should generate some output to the terminal and inform you that the
documentation has been built successfully.

You can find more details about the various ways that sphinx-build can be invoked
at http://sphinx-doc.org/invocation.html

Now you can open up the generated documentation in a web browser by opening
the index.html located in ```_build/html```.

You can simply use your browser's __open__ __file__ menu option and
navigate to the generated index.html file.

### Using Make

If you have make installed on your system, you can invoke the sphinx-build
using the included make build file.

Navigate to the location of the documentation and run the following command.

    $ make html

