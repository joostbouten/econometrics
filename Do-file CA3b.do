* Computer Assignment 3b

use "C:\Users\u1266283\Downloads\lz_2009.dta", clear

* (1)
tab bd

bys bd: gen number=_N
mean number

graph twoway (scatter number bd)

mean uncb3
mean uncj3
mean age3034

* (2)
sysdir set PLUS "C:\Users\u1266283"
sysdir set PERSONAL "C:\Users\u1266283”
ssc install cmogram

cmogram ikar4 bd, scatter lfit line(11139) cutpoint(11139) cutright
cmogram pbexp3 bd, scatter lfit line(11139) cutpoint(11139) cutright

* (3) 
cmogram indWholesale bd, scatter lfit line(11139) cutpoint(11139) cutright
cmogram unEmpl bd, scatter lfit line(11139) cutpoint(11139) cutright
cmogram laborEarnings bd, scatter lfit line(11139) cutpoint(11139) cutright

* (4)
* (a)
reg uncb3 july
reg uncj3 july
* (b)
reg pbexp10 july
reg pbinc_tot10 july

* (5)
gen day=day(bd)
gen month=month(bd)
gen bandwidth=day-1 if month==7
replace bandwidth=day-31 if month==6

cmogram number bd if bandwidth>-10&bandwidth<10, scatter lfit line(11139) cutpoint(11139) cutright 

reg number july if bandwidth>-10&bandwidth<10
