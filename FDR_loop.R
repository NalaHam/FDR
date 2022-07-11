
#(i/m)*Q is the equation used to find false discoveries
#where i is rank of p value, m is total number of tests, Q is false discovery rate
#Find the largest p-value that is less than the critical value. 
#Designate every p-value that is smaller than this p-value to be significant.

dat_rank$"(i/m)*Q" <- 0 #make new row
dat_rank$x <- 1:295 

list <- 1:295

m <- length(dat_rank$x) #total number of tests
Q <- 0.1 #FDR


#specifics
i <- dat_rank[1, 9] #pull rank of gene

c <- (i/m)*Q

dat_rank[ 1, 10] <- c

#for loop
for(x in list){
  i <- dat_rank[x, 9] #pull rank of gene
  
  c <- (i/m)*Q
  
  dat_rank[ x, 10] <- c
}


#find the test with the largest p-value that is less than its Benjamini-Hochberg critical value

df <- subset(dat_rank, dat_rank$p_value <= dat_rank$`(i/m)*Q`) #df of all values where the p value is less than or equal to B-H critical value

range(df$p_value) #find highest p value in the subsetted df: 0.05

#when looking at df the highest p value that was lower than its critial value was gene on row 295, 
#thus every p value above this one is considered significant 
#this also means that all genes found are considered significant for a false discovery rate of 10%












