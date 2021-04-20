using Distributions
# cdf() is equivalent to p[dist] in R
# quantile() is equivalent to q[dist] in R
function f(mu1,mu2, sd, corr, power, alpha, npreds, nmin, nmax)
    diff = 1
    for n = nmin:nmax
        NCP = (mu1-mu2)^2/(sqrt(sd^2*(1-corr^2))*(1/n+1/n)
        power_calc = 1-cdf(NoncentralF(1,194,NCP),quantile(FDist(1,194),0.95))
    if power_calc > power
            println("The sample size required for this contrast is:")
            return n
        end
end
end
end
