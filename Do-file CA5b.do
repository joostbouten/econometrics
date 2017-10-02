* Computer Assignment 5b

use "C:\Users\u1266283\Downloads\ca5b_northsea.dta"

* (1)
* (a)
sum temp watertemp
* (b)
sum hour if eventtime==0 & month==7
sum hour if eventtime==0 & month==12

* (2)
* (b)
tab month, gen(m)
tab year, gen(y)
tab eventtime, gen(e)
forvalues i=1/13 {
label variable e`i' "`=`i'-7'"
}
xtreg spot temp temp_sq watertemp watertemp_sq wind wind_sq e1-e4 e6-e13 e5 m2-m12 y2, fe i(grid_id)
* (c)
ssc install coefplot
coefplot, keep(e*) nolabels coeflabels(,labsize(tiny)) vertical xline(5) levels(90) yline(0) ytitle(difference in hourly spot detection rate) xtitle(event time) omitted order(e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 e11 e12 e13)
