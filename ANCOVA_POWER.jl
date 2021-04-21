using Distributions
# cdf() is equivalent to p[dist] in R
# quantile() is equivalent to q[dist] in R

for n=6:250
    NCP = (88-81)^2/(22.6^2*(2/n))
    power_calc = 1-cdf(NoncentralF(1,n*4-5,NCP),quantile(FDist(1,n*4-5),0.95))
    println(n*2)
    println(power_calc)
end
