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
sum morekids
display .0675253/.3805634

* (6)
ivregress 2sls weeksm1 (morekids=samesex)
* Is the effect large?
sum weeksm1
display -6.313685/19.01833

* (7)
ivregress 2sls weeksm1 agem1 black hispan othrace (morekids=samesex)
display -5.821051/19.01833


