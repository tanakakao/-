### sample_4_1.r
### �m���p�����g���b�N��A

data <- read.csv("data_4_1.csv")	# �f�[�^�̓ǂݍ���
mx <- numeric(24)				# ��A�֐�m(x)�̏���

for(i in 0:23){			# �����ɂ��O���[�v����
 group <- data[data$time==i, ]	# ����=i�̃O���[�v�̔����o��
 mx[i+1] <- mean(group$temp)	# �O���[�v���ŋC���̕��ϒl���v�Z
}
plot(0:23,mx,type='l',xlab="����",ylab="�C��")	# �`��
