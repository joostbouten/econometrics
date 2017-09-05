* Computer Assignment 2 Econometrics, Sep 2017
*I
use C:\Users\u1265889\Downloads\AJR_140915, clear
*IIa
summ logpgp95 avexpr logem4 lat_abst
*IIb
histogram logpgp95
histogram avexpr
*IIIa
graph twoway scatter logpgp95 avexpr
graph twoway lfit logpgp95 avexpr
graph twoway (scatter logpgp95 avexpr) (lfit logpgp95 avexpr)
*IIIb
reg logpgp95 avexpr
*EXPLANATION:
*
*IIIc
*EXPLANATION
*IIId
graph twoway (scatter avexpr logem4) (lfit avexpr logem4)
*IIIe
reg logpgp95 logem4
*EXPLANATION
*IIIf
reg avexpr logem4
*EXPLANATION
*IIIg
predict avexpr_hat
reg logpgp95 avexpr_hat
*EXPLANATION
*IIIh
reg avexpr logem4 lat_abst
reg logpgp95 avexpr_hat lat_abst
*EXPLANATION
*IIIi
ivreg logpgp95 lat_abst (avexpr=logem4), first
*IIIj
*EXPLANATION
