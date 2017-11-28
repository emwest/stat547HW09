hw09 : A package to assist in the visualization of linear model results
-----------------------------------------------------------------------

The goal of hw09 is to create an easy to use package that allows users to quickly visualize the objects produced in a simple linear model, including a table of regression coefficients and p values, as well as qplot using the lmfun() function. Please note, the pow function is a silly add on that was mostly developed in class.

The gapminder data were included as a readily accessible way for the user to practice using the function. I added to the pow function we developed in class to include plots but also to exploit some of the different test that expressions.

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
library(hw09)
lmfun(gapminder$lifeExp, gapminder$gdpPercap, mydata = gapminder)
```

![](README-example-1.png)

    #>          term    estimate std.error statistic       p.value
    #> 1 (Intercept) -19277.2490 914.09284 -21.08894  6.744507e-88
    #> 2           x    445.4447  15.01955  29.65766 3.565724e-156

    pow(1:35, 5)

![](README-example-2.png)

    #>  [1]        1       32      243     1024     3125     7776    16807
    #>  [8]    32768    59049   100000   161051   248832   371293   537824
    #> [15]   759375  1048576  1419857  1889568  2476099  3200000  4084101
    #> [22]  5153632  6436343  7962624  9765625 11881376 14348907 17210368
    #> [29] 20511149 24300000 28629151 33554432 39135393 45435424 52521875
