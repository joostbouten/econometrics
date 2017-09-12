* Computer Assignment 3a Econometrics, Sep 2017
use "C:\Users\u1265889\Downloads\ca3a_2017(1).dta", clear

* II
* a
sum age
* b
histogram grade_ectrics2
* c
sum grade_ectrics2 if grade_ectrics1~=.&grade_ectrics2~=.

*III
* a
graph twoway (scatter grade_ectrics2 grade_ectrics1) if grade_ectrics1>4&grade_ectrics1<7
graph twoway (scatter grade_ectrics2 grade_ectrics1) (lfit grade_ectrics2 grade_ectrics1 if grade_ectrics1<5.5) (lfit grade_ectrics2 grade_ectrics1 if grade_ectrics1>=5.5) if grade_ectrics1>4&grade_ectrics1<7

sysdir set PLUS "C:\Users\u1265889"
sysdir set PERSONAL "C:\Users\u1265889”

ssc install cmogram

cmogram grade_ectrics2 grade_ectrics1, scatter lfit line(5.49) cutpoint(5.49)

regress grade_ectrics2 grade_ectrics1 if grade_ectrics1>=5.5
regress grade_ectrics2 grade_ectrics1 if grade_ectrics1<5.5
display 2.375611 +5.5*.4919093
display 2.591561 +5.5*.5521149 
display ((2.375611 +5.5*.4919093)-(2.591561 +5.5*.5521149))/(2.591561 +5.5*.5521149 )
 
