#### Measures of beta diversity NMDS First using Bray-Curtis
## set a seed to make the results reproducible
set.seed(2)
dat.bc.nmds <- metaMDS(datt, k = 2, trymax = 100)  ### Bray-Curtis is the default metric, 
### k = 2 dimensions
ordiplot(dat.bc.nmds, type = "t", display = "sites")  ## Plot that shows names
stressplot(dat.bc.nmds)
## optional, this just shows how your dissimilarity fits with
## ordination distance
## Now using the binary version of Jaccard
dat.jb.nmds <- metaMDS(datt, k = 2, trymax = 100, distance = "jaccard", 
                       binary = T)
ordiplot(dat.jb.nmds, type = "t", display = "sites")
## you can use cex = 0.6 to make text smaller
## Why do we see quadrants collapsing into each other?
stressplot(dat.jb.nmds)
## optional, this just shows how your dissimilarity fits with
## ordination distance