* Computer Assignment 4 Econometrics, Sep 2017

use "C:\Users\u1265889\Downloads\minwage_280915.dta", clear

* II 
*a)
tab sample
tab state
tab sample if sample==1 & state==1

*b)
sum fte if sample==1

*c)
sum wage_st if sample==1

*III
*a)
*1)
bys state time: egen mean_wage_st=mean(wage_st) if sample==1
graph twoway (line mean_wage_st time if state==1) (line mean_wage_st time if state==0), yscale(range(0)) ylabel(0(1)6)
*2)
bys state time: egen mean_fte=mean(fte) if sample==1
graph twoway (line mean_fte time if state==1) (line mean_fte time if state==0), yscale(range(0)) ylabel(0(5)25)
*b)
*1)
table state time if sample==1, contents(mean wage_st)
*2)
display 5.08214 - 4.61298
display 4.61879 - 4.65364
*3)
display .4692--.0349
*c)
*1)
table state time if sample==1, contents(mean fte) 
*2)
display  17.5623 - 17.2754
display 18.0985 -  20.1136
*3) 
display .2869 -- 2.0151
*d)
*1)
regres wage_st  state_time state time
regres fte  state_time state time
*2) 
*Ownership dummy
regres wage_st state_time state time co_owned
regres fte  state_time state time co_owned 
*Chain dummies
regres wage_st  state_time state time co_owned i.chain
regres fte  state_time state time co_owned i.chain
*3)
tab chain if state==0
tab chain if state==1
tab co_owned if state==0
tab co_owned if state==1





