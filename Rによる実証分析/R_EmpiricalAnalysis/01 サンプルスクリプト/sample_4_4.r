### sample_4_4.r
### ���`��A�F�d�͎g�p��vs�C��

data <- read.csv("data_4_1.csv")	# �f�[�^�̓ǂݍ���
rec  <- lm(data$elec~data$temp)	# OLS����̎��s

plot(data$temp,data$elec,xlab="�C��",ylab="�d�C�g�p�ʁi��kW�j")	# �U�z�}
abline(rec)			# ��A����
rec 				# ���茋��
