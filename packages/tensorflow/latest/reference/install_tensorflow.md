---
repo-actions: []
---


# install_tensorflow


Install TensorFlow and its dependencies




## Description

``install_tensorflow()`` installs just the tensorflow python package and it's
direct dependencies. For a more complete installation that includes
additional optional dependencies, use `keras::install_keras()`.





## Usage
```r
install_tensorflow(
  method = c("auto", "virtualenv", "conda"),
  conda = "auto",
  version = "default",
  envname = NULL,
  extra_packages = NULL,
  restart_session = TRUE,
  conda_python_version = NULL,
  ...,
  pip_ignore_installed = TRUE,
  python_version = conda_python_version
)
```




## Arguments


Argument      |Description
------------- |----------------
method | Installation method. By default, "auto" automatically finds a method that will work in the local environment. Change the default to force a specific installation method. Note that the "virtualenv" method is not available on Windows.
conda | The path to a ``conda`` executable. Use ``"auto"`` to allow ``reticulate`` to automatically find an appropriate ``conda`` binary. See Finding Conda and `conda_binary()` for more details.
version | TensorFlow version to install. Valid values include:   *  `"default"` installs  2.9  *  `"release"` installs the latest release version of tensorflow (which may be incompatible with the current version of the R package)  *  A version specification like `"2.4"` or `"2.4.0"`. Note that if the patch version is not supplied, the latest patch release is installed (e.g., `"2.4"` today installs version "2.4.2")  *  `nightly` for the latest available nightly build.  *  To any specification, you can append "-cpu" to install the cpu version only of the package (e.g., `"2.4-cpu"`)  *  The full URL or path to a installer binary or python *.whl file.
envname | The name, or full path, of the environment in which Python packages are to be installed. When ``NULL`` (the default), the active environment as set by the ``RETICULATE_PYTHON_ENV`` variable will be used; if that is unset, then the ``r-reticulate`` environment will be used.
extra_packages | Additional Python packages to install along with TensorFlow.
restart_session | Restart R session after installing (note this will only occur within RStudio).
... | other arguments passed to `reticulate::conda_install()` or `reticulate::virtualenv_install()`, depending on the ``method`` used.
pip_ignore_installed | Whether pip should ignore installed python packages and reinstall all already installed python packages. This defaults to ``TRUE``, to ensure that TensorFlow dependencies like NumPy are compatible with the prebuilt TensorFlow binaries.
python_version, conda_python_version | Pass a string like "3.8" to request that conda install a specific Python version. This is ignored when attempting to install in a Python virtual environment. Note that the Python version must be compatible with the requested Tensorflow version, documented here: https://www.tensorflow.org/install/pip#system-requirements




## Details

You may be prompted to download and install
miniconda if reticulate did not find a non-system installation of python.
Miniconda is the recommended installation method for most users, as it
ensures that the R python installation is isolated from other python
installations. All python packages will by default be installed into a
self-contained conda or venv environment named "r-reticulate". Note that
"conda" is the only supported method on M1 Mac.

If you initially declined the miniconda installation prompt, you can later
manually install miniconda by running `reticulate::install_miniconda()`.







## See Also

`keras::install_keras()`



