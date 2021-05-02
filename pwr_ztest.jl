using Distributions

#This calculates the power for an upper-tailed z-test
#Need to add support for choose different hypotheses: lower-tailed, upper-tailed, two-sided
function power_norm(n, alpha, mu_0, mu_a, sigma)
    power_calc = 1 - cdf(Normal(0,1),quantile(Normal(0,1),1-alpha)+(mu_0-mu_a)*sqrt(n)/sigma)
end

function samplesize_norm(power, alpha, mu_0, mu_a, sigma)
    sample_size = 0
end

function power_graph(n, alpha, mu_0, mu_a, sigma)
    for i=1:n
    power_calc = 1 - cdf(Normal(0,1),quantile(Normal(0,1),1-alpha)+(mu_0-mu_a)*sqrt(n)/sigma)
    end
end