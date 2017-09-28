*Computer Assignment 5a ‘Event time’, Oct 2017
use "C:\Users\u1257943\Downloads\ca5a_bat_2016.dta", clear
xtset route calendar_week
sum calendar_week if LetterReceived==1
sum residual_weight if calendar_week<-6
codebook route
codebook calendar_week
graph twoway (scatter residual_weight calendar_week), by( route)
graph twoway (scatter residual_weight calendar_week if TreatmentOngoing==0&TreatmentCompleted==0) (scatter residual_weight calendar_week if TreatmentOngoing==1| TreatmentCompleted==1) if route<200, by( route)
* III)
*b)
sort route calendar_week
by route: gen sumTreatmentOngoing=sum(TreatmentOngoing)
sort route calendar_week
by route: gen startweekTreatment_t=calendar_week if sumTreatmentOngoing==1
sort route calendar_week
by route: egen startweekTreatment=mean(startweekTreatment_t)
drop startweekTreatment_t sumTreatmentOngoing
gen eventtime=calendar_week-startweekTreatment
drop startweekTreatment
summ eventtime
* c)
tab calendar_week, gen(w)
tab eventtime, gen(e)
gen em37_m44=0
replace em37_m44=1 if e1==1|e2==1|e3==1|e4==1|e5==1|e6==1|e7==1|e8==1
gen e24_39=0
replace e24_39=1 if e69==1|e70==1|e71==1|e72==1|e73==1|e74==1|e75==1|e76==1|e77==1|e78==1|e79==1|e80==1|e81==1|e82==1|e83==1|e84==1
xtreg residual_weight em37_m44 e9-e41 e43-e68 e24_39 w2-w52, fe i(route) cluster(route)
* d)
ssc install coefplot
xtreg residual_weight em37_m44 e9-e41 e43-e68 e24_39 e42 w2-w52, fe i(route) cluster(route)
coefplot, keep(e*) nolabels coeflabels(,labsize(tiny)) vertical xline(35) levels(90) yline(0) ytitle(difference in weekly residual waste/route) xtitle(event time) omitted order(em37_m44 e9 e10 e11 e12 e13 e14 e15 e16 e17 e18 e19 e20 e21 e22 e23 e24 e25 e26 e27 e28 e29 e30 e31 e32 e33 e34 e35 e36 e37 e38 e39 e40 e41 e42 e43 e44 e45 e46 e47 e48 e49 e50 e51 e52 e53 e54 e55 e56 e57 e58 e59 e60 e61 e62 e63 e64 e65 e66 e67 e68 e24_39)
drop e1-e8
ren em37_m44 e8
drop e69-e84
ren e24_39 e69
forvalues i=8/69 {
label variable e`i' "`=`i'-45'"
}
xtreg residual_weight e8 e9-e41 e43-e68 e69 e42 w2-w52, fe i(route) cluster(route)
coefplot, keep(e*) coeflabels(,labsize(tiny)) vertical xline(35) levels(90) yline(0) ytitle(difference in weekly residual waste/route) xtitle(event time) omitted order(e8 e9 e10 e11 e12 e13 e14 e15 e16 e17 e18 e19 e20 e21 e22 e23 e24 e25 e26 e27 e28 e29 e30 e31 e32 e33 e34 e35 e36 e37 e38 e39 e40 e41 e42 e43 e44 e45 e46 e47 e48 e49 e50 e51 e52 e53 e54 e55 e56 e57 e58 e59 e60 e61 e62 e63 e64 e65 e66 e67 e68 e69)
* e)
ssc install parmest
parmest, label format(estimate) list(parm label estimate)
export excel using "M:\Data\eventtime1.xls", firstrow(variables)

