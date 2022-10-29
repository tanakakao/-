rm(list=ls())
set.seed(2)

 # ��6�́F�V�~�����[�V���� #

 n     <- 400 # �T���v���T�C�Y
 err   <- runif(n,30,60) # �덷���i�ƒ���j
 hours <- rnorm(n, err/10, 1) - 4
 hours <- round(ifelse(hours < 0, 0, hours), 1) # �Q�[������
 Y     <- 20 + rnorm(n, 100, 10) - 1.2*err
 grade <- round(ifelse(Y > 100, 100, Y)) # ����

 write.csv(cbind(grade,hours), "Ch6.data.csv")