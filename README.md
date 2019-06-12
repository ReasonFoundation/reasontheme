
<!-- README.md is generated from README.Rmd. Please edit that file -->

### `reasonStyle()`

5.  `reasonStyle()`: has no arguments and is added to the ggplot chain
    after you have created a plot. What it does is generally makes text
    size, font and colour, axis lines, axis text and many other standard
    chart components into Reason style.

The function is pretty basic and does not change or adapt based on the
type of chart you are making, so in some cases you will need to make
additional `theme` arguments in your ggplot chain if you want to make
any additions or changes to the style, for example to add or remove
gridlines etc. Also note that colours for lines in the case of a line
chart or bars for a bar chart, do not come out of the box from the
`reasonStyle` function, but need to be explicitly set in your other
standard `ggplot` chart functions.

Example of how it is used in a standard workflow:

    line <- ggplot2(line_df, aes(x = year, y = lifeExp)) +
    geom_line(colour = "#007f7f", size = 1) +
    geom_hline(yintercept = 0, size = 1, colour="#333333") +
    reasonStyle()
