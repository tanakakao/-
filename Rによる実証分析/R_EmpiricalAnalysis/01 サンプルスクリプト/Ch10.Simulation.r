set.seed(1)

 # ��10�́F�V�~�����[�V���� #

 N    <- 200           #  �T���v���T�C�Y
 abil <- rnorm(N,0,10) #�@�\��
 Z    <- apply(cbind(rnorm(N, 60, 8) + abil, 100), 1, min)
 T    <- ifelse(Z < 60 , 1, 0)

 Y <- apply(cbind(rnorm(N, 55, 6) + sqrt(Z) + T*10 + abil, 100), 1, min)

 plot(Z,Y, ylim = c(20,100), xlim = c(20,100), xlab = "Z: �O�������_��", ylab = "Y: ��������_��")
 abline(v = 60, col='red', lwd=2, lty=2)

 write.csv(cbind(Y,Z), "Ch10.data.csv")