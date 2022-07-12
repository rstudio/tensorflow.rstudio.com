# install_keras


Install TensorFlow and Keras, including all Python dependencies




## Description

This function will install Tensorflow and all Keras dependencies. This is a
thin wrapper around `tensorflow::install_tensorflow()`, with the only
difference being that this includes by default additional extra packages that
keras expects, and the default version of tensorflow installed by
``install_keras()`` may at times be different from the default installed
``install_tensorflow()``. The default version of tensorflow installed by
``install_keras()`` is "2.9".





## Usage
```r
install_keras(
  method = c("auto", "virtualenv", "conda"),
  conda = "auto",
  version = "default",
  tensorflow = version,
  extra_packages = NULL,
  ...,
  pip_ignore_installed = TRUE
)
```




## Arguments


Argument      |Description
------------- |----------------
method | Installation method. By default, "auto" automatically finds a method that will work in the local environment. Change the default to force a specific installation method. Note that the "virtualenv" method is not available on Windows.
conda | The path to a ``conda`` executable. Use ``"auto"`` to allow ``reticulate`` to automatically find an appropriate ``conda`` binary. See Finding Conda and `conda_binary()` for more details.
version | TensorFlow version to install. Valid values include:   *  `"default"` installs  2.9  *  `"release"` installs the latest release version of tensorflow (which may be incompatible with the current version of the R package)  *  A version specification like `"2.4"` or `"2.4.0"`. Note that if the patch version is not supplied, the latest patch release is installed (e.g., `"2.4"` today installs version "2.4.2")  *  `nightly` for the latest available nightly build.  *  To any specification, you can append "-cpu" to install the cpu version only of the package (e.g., `"2.4-cpu"`)  *  The full URL or path to a installer binary or python *.whl file.
tensorflow | Synonym for ``version``. Maintained for backwards.
extra_packages | Additional Python packages to install along with TensorFlow.
... | other arguments passed to `reticulate::conda_install()` or `reticulate::virtualenv_install()`, depending on the ``method`` used.
pip_ignore_installed | Whether pip should ignore installed python packages and reinstall all already installed python packages. This defaults to ``TRUE``, to ensure that TensorFlow dependencies like NumPy are compatible with the prebuilt TensorFlow binaries.




## Details

The default additional packages are:
tensorflow-hub, tensorflow-datasets, scipy, requests, pyyaml, Pillow, h5py, pandas, pydot, with their
versions potentially constrained for compatibility with the
requested tensorflow version.







## See Also

`tensorflow::install_tensorflow()`



