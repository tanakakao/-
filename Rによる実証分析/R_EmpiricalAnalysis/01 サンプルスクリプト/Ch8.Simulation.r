rm(list=ls())
set.seed(1)

 # ��8�́F�V�~�����[�V���� #

 n     <- 40 # �T���v���T�C�Y
 motiv <- runif(n, 0,40) # �w�K�ӗ~
 err   <- runif(n,30,60) # �덷���i�l�̔\�́j
 T     <- ifelse(motiv > 20, 1, 0) # �o�ȗ�
 Y     <- round(motiv + err) # ����

 # �U�z�}�v���b�g #

 par(ps = 18)
 plot(T,Y,xlim=c(-0.5,1.5),ylim=c(0,100),xaxt="n",cex=2)
 axis(side=1, at=c(0,1))

 # ���ϒl #

 mean(Y[which(T == 1)]) # �o�ȗ�50%�ȏ�̊w���̕��ϓ_
 mean(Y[which(T == 0)]) # �o�ȗ�50%�����̊w���̕��ϓ_

 # �Œ�_ #

 min(Y[which(T == 1)]) # �o�ȗ�50%�ȏ�̊w���̍Œ�_
 min(Y[which(T == 0)]) # �o�ȗ�50%�����̊w���̍Œ�_

 # �ō��_ #

 max(Y[which(T == 1)]) # �o�ȗ�50%�ȏ�̊w���̍ō��_
 max(Y[which(T == 0)]) # �o�ȗ�50%�����̊w���̍ō��_

 write.csv(cbind(Y,T,motiv), "Ch8.data.csv")