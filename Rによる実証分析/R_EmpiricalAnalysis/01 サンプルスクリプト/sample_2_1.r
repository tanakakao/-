# sample_2_1.r
# �W�{���ςƑ吔�̖@��

m <- numeric(10000)
for(i in 1:10000){m[i] <- mean(pop[1:i])}
plot(m, type='l', xlab="�W�{��", ylab="�W�{����", main="�吔�̖@��")