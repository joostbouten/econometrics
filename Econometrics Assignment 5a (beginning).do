*Computer Assignment 5a ‘Event time’, Oct 2017
use "C:\Users\u1257943\Downloads\ca5a_bat_2016.dta", clear
xtset route calendar_week
sum calendar_week if LetterReceived==1
sum residual_weight if calendar_week<-12
codebook route
codebook calendar_week
graph twoway (scatter residual_weight calendar_week), by( route)
graph twoway (scatter residual_weight calendar_week if TreatmentOngoing==0&TreatmentCompleted==0) (scatter residual_weight calendar_week if TreatmentOngoing==1| TreatmentCompleted==1) if route<200, by( route)
