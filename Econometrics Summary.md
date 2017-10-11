## Econometrics Summary

#### Slides lecture 1:

Before/after comparisons may under/overestimate treatment effects due to naive counterfactuals (pokon example).

Naive counterfactuals:

-  Before/After comparison
-  Cross-sectional comparison (selection bias)

Selection bias = omitted variable bias

Potential outcomes:

-  Outcome for subject/group when treated
-  Outcome for subject/group when not treated

Problem of causal interference: **only one potential outcome is observed**

Possible solution: perfectly comparable control group as proxy for the unobserved potential outcome. 

Selection bias may be caused by self-selection

And omitted variable should:

1.  differ between treatment and control groups.
2.  related to both the outcome and treatment variable. 
3.  be unobserved.

Individual *i* has two potential outcomes:

1. $Y_{1i}$: With treatment
2. $Y_{0i}$: Without treatment

The causal effect of being subjected to treatment now becomes: $Y_{1i} - Y_{0i}$

Comparable control groups are generated through **randomized trial**.

*Check for balance:* after randomization, are differences in characteristics of control and treatment group statistically significantly different from zero? Lack of balance is an indication of failure of randomization. 

*Statistical significance $\neq$ economic significance*

Is the effect small or large? $$100\%\cdot\widehat{\beta} \bigm/ baseline\  mean\ of\ outcome\ variable $$

Mechanism experiment to:

1. Single out _one_ mechanism and see how strongly it works 
2. As a _screening device_


#### Slides lecture 2:

**Instrumental variables** can be used to isolate random variation in treatment.

**ITT**: Intention To Treat -- The effect of *prescribing* the treatment rather than *taking* the treatment. 

-  *Treatment dilution:* subjects assigned to treatment fail to take treatment
-  *Treatment migration:* subjects in the control group take the treatment

What we are looking for is the effect of *treatment delivered* $\rightarrow$ isolate random variation in treatment delivered with an instrumental variable.

-  Independence assumption: instrument isolates as good as random variation in treatment.
-  First stage: instrument should be sufficiently strong, the share of random variation in treatment delivered should be sufficiently large.
-  Exclusion restriction: instrument should only affect the outcome by way of the treatment

**LATE**: Local Average Treatment Effect -- The effect of treatment on *compliers*, and not the effect on never/always-takers.

Important note: LATE is not always representative of ATE, never/always-takers may respond differently. 

First stage effect -- effect of the instrument $(Z)$ on treatment dummy $(D)$ : $\phi$
 
-  $Y_i=\alpha+\beta\ D_i+\varepsilon_i$

Reduced form $(ITT)$ -- effect of the instrument on the outcome variable $(Y)$ : $\rho$ 

- $D_i=\alpha+\beta\ Z_i+\varepsilon_i$

Second stage effect $(LATE)$: $\lambda = \rho \cdot \dfrac{1}{\phi}$

- $Y_i=\alpha+\beta\ \widehat{D}_i+\varepsilon_i$
 
As soon as $\phi < 1$, there is imperfect compliance and thus $LATE > ITT$

The instrumental variable approach comes in handy when compliance is imperfect, it can be used to show treatment effect for compliers by isolating the random part of variation in treatment delivered.

#### Slides lecture 3:

**Regression discontinuity**

* Treatment dummy: 0 before treatment, 1 after treatment.
* Control group and treatment group are expected to be very similar around the cutoff and only differ in terms of receiving the treatment

RD Estimation equation:
$$Y_i=\alpha+\beta\cdot cy_i+\rho\cdot D_i+\varepsilon_i$$
Where $cy_i$ is the 'running variable' and $D_i$ is the treatment dummy.

*  We expect as-good-as random variation in treatment due to assignment based on 1 observable variable (as long as they do not differ in other terms). 

There is thus no omitted variable bias as long as covariates change continuously and smoothly $\rightarrow$ then the only discontinuous change is the treatment. 

The regression discontinuity design provides a *local* average treatment effect: the effect identified is specific to the group of subjects around the cutoff. People further from the cutoff may differ from this group.

The relationship between the outcome and the running variable does not need to be flat. Dissimilarities between treatment and control may differ as long as the relationship between the running variable and the outcome can be captured. 

Even situations with polynomial or changing relationships can be dealt with.

**Bandwidth**: the width of the window around the cutoff.

The choice of the bandwidth is a tradeoff between noise and bias:

*Narrow (Broad) bandwidth:*
 
*  **+** Less (more) concern about choosing functional forms/non-linear trends. 
*  **--** Estimate of the treatment effect becomes more (less) noisy.

*Important:* **Manipulation assumption** --- Subjects cannot manipulate treatment assignment 

**Falsification test**--- Test for an effect of the treatment on an outcome that you expect to be **un**affected by the treatment.

* $A_i=\alpha=\beta \cdot X_i+\rho \cdot D_i +\varepsilon_i$

Where $A$ is that other outcome, $X$ is the running variable and $D$ is the treatment dummy.

**Fuzzy RD**: when the treatment does not sharply turn on/off at the cutoff, but *treatment intensity* changes. Or *probability of receiving treatment* changes.

*  $Y_i=\alpha=\beta\cdot R_i+\lambda\cdot T_{del\ i}+\varepsilon_i$

Where $T_{del}$ stands for _treatment delivered_ and $R$ is the running variable.

Fuzzy RD: **Combine with IV** $\rightarrow$ isolate random variation in $T_{del}$, use original treatment assigned $(D)$ as an instrument for $T_{del}$

* First stage:
$T_{del}=\alpha+\beta\cdot R_i+\phi\cdot D_i+\varepsilon_i$

* From fist stage: predict $\widehat{T}_{del}$

* Second stage: $Y_i=\alpha+\beta\cdot R_i+\lambda\cdot\widehat{T}_{del\ i}+\varepsilon_i$

#### Slides lecture 4

