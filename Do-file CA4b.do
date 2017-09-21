* Computer Assignment 4b

use "C:\Users\u1266283\Downloads\bat_did_2017.dta" 

* 1
xtset treatment_group calendar_week
* (a)
sum residual_weight if treatment_period==0
display 9.709718/1050
* (b)
histogram residual_weight

*2
* (a)
graph twoway (line residual_weight calendar_week if treatment_group==0)(line residual_weight calendar_week if treatment_group==1) if treatment_period~=1
* (b)
sum residual_weight if treatment_period==0 & treatment_group==1
sum residual_weight if treatment_period==0 & treatment_group==0
sum residual_weight if treatment_period==1 & treatment_group==1
sum residual_weight if treatment_period==1 & treatment_group==0
display (-1.1096)/9.7445
* (c)
graph twoway (line residual_weight calendar_week if treatment_group==0)(line residual_weight calendar_week if treatment_group==1), xline(23) yscale(range(0)) ylabel(0(2)12)
graph twoway (line residual_weight calendar_week if treatment_group==0), xline(23) yscale(range(0)) ylabel(0(2)12)


*3
* (b)
gen treatment_dummy= treatment_group*treatment_period
reg residual_weight treatment_dummy treatment_group i.calendar_week
margins, eydx(treatment_dummy)
