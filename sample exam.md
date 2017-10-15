**Question 1**

(a)

Outcome variable: being burgled or not being burgled

Treatment: having high quality window and door locks

(b)

$Y_{1i}$: the outcome conditional on being treated (having high-quality locks)

$Y_{0i}$: the outcome conditional on not being treated (having low-quality locks)

&#40;c)

Burglars may be scared from choosing a house with visibly higher quality locks.

(d)

Households with higher quality locks may use other measures more than others as well, such as alarm systems. This can cause the comparison to overestimate the effect of high quality locks. 

**Question 2**

(a)

Treatment dilution means that people assigned to the treatment do not take the treatment: thus people that were handed the voucher that did not improve the quality of their locks dilute the treatment. This can be problematic because the local treatment effect that can now be estimated may not be representative of the entire population as it may not be entirely randomly chosen households that choose not to invest in higher-quality window and door locks while given the voucher. 

(b) 

The ITT estimate provides an estimate of the effect of providing the treatment rather than the effect of subjects actually taking the treatment.   
In this example this means that the ITT estimate is the estimate of the effect of providing people with a €500 voucher to improve window and door locks.

&#40;c)

The exclusion restriction says that the instrumental variable shall not have an effect on the outcome variable via any other way than the treatment. ~~It is not likely that this restriction holds as the complience is likely to be dependent some factors which also may influence the outcome variable. For example: people that choose not to comply may also be less cautious in other ways: they may forget to lock their house more often when they leave the house.~~

The original randomization is not related to the outcome variable. Thus, the LATE should not be related to the chance of being burgled in any other way and the exclusion restriction should hold.

(d)

$1/(70-30)=2.5$

(e)

The LATE measures the effect of the treatment on the subset of the sample that complies with the treatment and thus neglects the effect on never-takers and always-takers.

**Question 3**

(a)

$Y_i=\alpha+\beta\cdot Z_i+\varepsilon$

Where $Z$ is the instrumental variable of risk aversity and $Y$ is the outcome variable of either being burgled or not being burgled. The reduced form is the direct effect of the instrument on the outcome.

(b)

She might want to look at her first stage to see whether her instrument is sufficiently strongly related to the treatment variable.

&#40;c)

The independence assumption does not hold, this affects the $LATE$ ... 

(d)

The exclusion restriction says that the instrumental variable shall not have an effect on the outcome variable via any other way than the treatment. It is unlikely that the exclusion restriction holds as people that are more risk averse are probably not only likely to put better locks on their doors and windows: they may also be more inclined to use alarm systems or have dogs as well, which may also influence the chance of being burgled. 

**Question 4**

(a)

Outcome variable: earnings at later stage in life

Treatment: graduating with an 8.0 or higher

(b)

An omitted variable such as "ability" could cause upward bias. As it is likely that people with higher ability have a higher chance of being part of the treatment group, the control group is likely not to be similar in characterics other than graduating "summa cum laude" or not. This can cause the estimated treatment effect to be overestimated as ability likely positively affects future earnings as well. 

&#40;c)

$Y_{i}=\alpha+\beta\cdot cy_{i}+\rho\cdot D_i+\varepsilon_{i}$

Where $Y_i$ is the outcome variable, $cy_i$ is the running variable, and $D_i$ is the treatment dummy.

(d)

The relationship with the running variable is likely to be positive, as the average grade gets higher, it is likely that future earnings increase as well. 

(e)

~~The manipulation assumption states that people may not manipulate treatment assignment. This assumption is likely to hold as people are likely to already try to put themselves in the treatment group.~~

A basic assumption is that other covariates may only change continuously and smoothly. 
It may however be possible that students that perform around the grade average 8.0 work hard as long as they need to get high grades to maintain a "cum laude" grade and stop working hard when they have achieved that grade for certain. If this situation where to be realistic, the assumption may fail. 

(f)

Bandwidth is the window around the treatment cutoff (average grade = 8.0) that is used for estimation of the effect. As the bandwidth gets broader, it can be harder to choose a functional form for the running variable which can increase the bias. When narrowing the bandwidth, the estimated treatment effect can become more noisy. 

(g)

Including the effort variable can be a solution to the example of the assumption violation mentioned under (e), after including the covariate the estimated effect of the treatment could be lower as putting in effort is likely to positively affect future earnings as well. The standard error could be lower as well as more variation could explained by the effort variable. 

(h)

A falsification test tests for an effect of the treatment on an outcome which is expected to be unaffected by the treatment.

An outcome that is likely not to be affected by either graduating 'summa cum laude' or not is for example the ?number of kids that a subject gets?.

$A_i=\alpha+\beta⋅R_i+\rho⋅D_i+\varepsilon_i$
Where $A_i$ is that other outcome  

**Question 5**

1. The treatment and control group should have similar trends
2. No other policies may be pursued during the treatment period
3. Treatment assignment should be independent of other factors

**Question 6**

It should
 
1. Be (partially) unobserved
2. Differ between treatment and control group
3. Be related to both the treatment and outcome variable


