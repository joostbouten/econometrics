* Computer Assignment 6a

* (I)
* (a)
use "C:\Users\u1266283\Downloads\heterogeneity.dta", clear
xtset route calendar_week

* (II)
* (a)
sum residual_weight if calendar_week==34
* (b)
sum TimeElapsed
* (c)
graph twoway (scatter residual_weight calendar_week if RepTreatmentOngoing==0&RepTreatmentCompleted==0) (scatter residual_weight calendar_week if RepTreatmentOngoing==1| RepTreatmentCompleted==1) if TimeElapsed>25, by(route)

* (III)
* (a)
xtreg residual_weight RepTreatment i.calendar_week, fe i(route) cluster(route)
margins, eydx(RepTreatment)
xtreg residual_weight RepTreatment i.calendar_week, fe i(route)
* (b)
reg residual_weight i.RepTreatment##c.TimeElapsed i.calendar_week i.route, cluster(route)
margins, eydx(RepTreatment)
margins, over(TimeElapsed) dydx(RepTreatment)
* (c)
marginsplot
* (d)
gen quick=(TimeElapsed<=17)
gen medium1=(TimeElapsed>17&TimeElapsed<=23)
gen medium2=(TimeElapsed>23&TimeElapsed<=27)
gen slow=(TimeElapsed>27)
gen RepTreatment_quick=RepTreatment*quick
gen RepTreatment_medium1=RepTreatment*medium1
gen RepTreatment_medium2=RepTreatment*medium2
gen RepTreatment_slow=RepTreatment*slow
xtreg residual_weight RepTreatment_quick RepTreatment_medium1 RepTreatment_medium2 RepTreatment_slow i.calendar_week, fe i(route) cluster(route)
* (e)
gen coeff=.
replace coeff=_b[RepTreatment_quick] if TimeElapsed==13
replace coeff=_b[RepTreatment_medium1] if TimeElapsed==19
replace coeff=_b[RepTreatment_medium2] if TimeElapsed==25
replace coeff=_b[RepTreatment_slow] if TimeElapsed==29
sort coeff
graph twoway (scatter coeff TimeElapsed) (line coeff TimeElapsed)
