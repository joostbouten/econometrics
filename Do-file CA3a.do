* Computer Assignment 3a
* I (a)
use "C:\Users\u1266283\Downloads\ca3a_2017(1).dta" 

* II (a, b & c)
sum age
histogram grade_ectrics2
sum grade_ectrics2 if grade_ectrics1~=.&grade_ectrics2~=.

* III
* (a)
graph twoway (scatter grade_ectrics2 grade_ectrics1) if grade_ectrics1>4&grade_ectrics1<7
graph twoway (scatter grade_ectrics2 grade_ectrics1) (lfit grade_ectrics2 grade_ectrics1 if grade_ectrics1<5.5) (lfit grade_ectrics2 grade_ectrics1 if grade_ectrics1>=5.5) if grade_ectrics1>4&grade_ectrics1<7

sysdir set PLUS "C:\Users\u1266283"
sysdir set PERSONAL "C:\Users\u1266283"
ssc install cmogram

cmogram grade_ectrics2 grade_ectrics1, scatter lfit line(5.49) cutpoint(5.49)

reg grade_ectrics2 grade_ectrics1 if grade_ectrics1<5.5
display 2.591561 + 5.5*.5521149 
reg grade_ectrics2 grade_ectrics1 if grade_ectrics1>=5.5
display 2.375611 + 5.5*.4919093
display (5.6281929-5.0811122)/5.6281929

* (b)
gen treatment=(grade_ectrics1<5.5)
graph bar age if grade_ectrics1>=4.5&grade_ectrics1<=7, by(treatment)
cmogram white grade_ectrics1 if grade_ectrics1>=4.5&grade_ectrics1<=7, scatter lfit line(5.49) cutpoint(5.49)
cmogram age grade_ectrics1 if grade_ectrics1>=4.5&grade_ectrics1<=7, scatter lfit line(5.49) cutpoint(5.49)

* (c)
reg grade_ectrics2 treatment grade_ectrics1 if grade_ectrics1>=4.5&grade_ectrics1<=7
margins, eydx(treatment)

* (d)
reg grade_ectrics2 treatment grade_ectrics1 age gender sped if grade_ectrics1>=4.5&grade_ectrics1<=7
reg grade_ectrics2 treatment grade_ectrics1 if age~=.&gender~=.&grade_ectrics1>=4.5&grade_ectrics1<=7

* (e)
reg grade_ectrics2 treatment age gender sped if grade_ectrics1>=4.5&grade_ectrics1<=7
