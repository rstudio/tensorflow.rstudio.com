# [tensorflow.rstudio.com](https://tensorflow.rstudio.com) sources

Here you can find the source code for the website https://tensorflow.rstudio.com (also https://keras.rstudio.com, which redirects to https://tensorflow.rstudio.com).

Contributions are welcome!
If you would like to propose changes to the website:

1.  Fork and clone this repository
2.  Run or `source()` the R script \_utils/create-r-tensorflow-website-venv.R.

``` bash
Rscript _utils/create-r-tensorflow-website-venv.R
```

3.  Install [quarto](https://quarto.org/docs/get-started/).
4.  At the terminal, run `quarto preview` . The first time you run this it will take up to 10 minutes to create a new folder in the project: "\_site". This is a local build of the website you will be able to work with interactively. Once quarto is done rendering the local site, you it will open a browser where you can preview your changes live.
5.  Modify the files you are interested in changing using your editor of choice (e.g., RStudio). `quarto preview` will automatically execute and rerender the updated qmds and you will see your changes reflected in the live preview in the browser.
6.  Once you're happy with your changes, push them to your forked repo and open a pull request.

If you run into any difficulties with the instructions above, please don't hesitate to file an [issue](https://github.com/rstudio/tensorflow.rstudio.com/issues/new).
