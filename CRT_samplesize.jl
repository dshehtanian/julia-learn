using Distributions


function CRT_clustersize(n1, rho, d, alpha, power_level)
    n2 = 3
    while n2 < 100
        ncp = d/(sqrt(4*(1+(n1-1)*rho)/(n1*n2)))
        #println(ncp)
        crit = quantile(FDist(1,n2-2),1-alpha)
        power_calc = 1 - cdf(NoncentralF(1,n2-2,ncp^2),crit)
        #println("p",power_calc) 
        if power_calc > power_level
            cluster_num = n2
            return cluster_num
         end
        n2 +=1
    end
end


function CRT_percluster(n2, rho, d, alpha, power_level, covariate_corr)
    n1 = 2
    while n1<1000
        design_effect = 1 + (n1*(1-covariate_corr^2)-1)*rho-(n1*covariate_corr^2)/(n1-1)
    end


end