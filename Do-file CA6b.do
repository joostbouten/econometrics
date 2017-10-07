* Computer Asssignment 6b

use "C:\Users\u1266283\Downloads\ca6b.dta", clear
xtset route week

* First
reg residual_weight i.treatment##c.sorting i.week i.route, cluster(route)
margins, eydx(treatment)
xtreg residual_weight treatment i.week, fe i(route) cluster(route)
margins, eydx(treatment)
* Second
marginsplot

* Third
