### sample_4_3.r
### �m���p�����g���b�N��A

data <- read.csv("data_4_1.csv")	# �f�[�^�̓ǂݍ���
x <- seq(20,35,0.1)	# x=�ŏ��l20�C�ő�l30�C����0.1
n <- length(x)		# x�̒�����n�Ƃ���
mx <- numeric(n)		# ��A�֐�m(x)�̏���

for(i in 1:n){				# �C���ɂ��O���[�v����
 group <- data[data$temp==x[i], ]	# �C��=x[i]�̃O���[�v�̔����o��
 mx[i] <- mean(group$elec)		# �d�͎g�p�ʂ̕��ϒl���v�Z
}
plot(x,mx,type='l',xlab="�C��",ylab="�d�͎g�p�ʁi��kW�j")	# �`��
