use "C:\Users\u1266283\Downloads\ca2b.dta" 

* (1)
histogram weeksm1
graph bar weeksm1, by(morekids)
ssc install distplot
distplot scatter weeksm1, by(morekids)

* (2)
reg weeksm1 morekids

* (4)
reg morekids samesex 
* Is the effect large?
display .0675253/.3805634

* (6)
predict morekids_hat
reg weeksm1 morekids_hat
