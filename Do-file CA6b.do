* Computer Asssignment 6b

use "C:\Users\u1266283\Downloads\ca6b.dta", clear
xtset route week

* First
reg residual_weight i.treatment##c.sorting i.week i.route, cluster(route)
margins, eydx(treatment)

* Second
margins, over(sorting) dydx(treatment)
marginsplot

* Third
gen low=(sorting<57)
gen medium1=(sorting>=57&sorting<=61)
gen medium2=(sorting>61&sorting<=64)
gen high=(sorting>64)
gen treatment_low=treatment*low
gen treatment_medium1=treatment*medium1
gen treatment_medium2=treatment*medium2
gen treatment_high=treatment*high
xtreg residual_weight treatment_low treatment_medium1 treatment_medium2 treatment_high i.week, fe i(route) cluster(route)

gen coeff=.
replace coeff=_b[treatment_low] if sorting==49
replace coeff=_b[treatment_medium1] if sorting==59
replace coeff=_b[treatment_medium2] if sorting==63
replace coeff=_b[treatment_high] if sorting==66
sort sorting
graph twoway (scatter coeff sorting) (line coeff sorting)
