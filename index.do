<<dd_version: 2>>     
<<dd_include: header.txt>>

```
<<dd_do:nooutput>>
set obs 30

gen age = (rnormal() * 15) + 57

gen age_t=(rt(_N)*15)+57

hist age, ///
    fcolor(orange%40) /// simulated normal 
    addplot(hist age, fcolor(midblue%50)) /// simulated t-distribution 
    normal /// theoretical normal
    legend(on ///
       lab(1 "Sampled from Normal") ///
   lab(2 "Theoretical Normal") ///
   lab(3 "Sampled from t-distribution") ///
   )

graph export graph.png, replace 

<</dd_do>>
```

<<dd_graph>>

**Results:** 
The results are from simulated data.

Distribution of Age, years ~ ( $mu\$ = 57, $sigma^2\$ = 225 )



