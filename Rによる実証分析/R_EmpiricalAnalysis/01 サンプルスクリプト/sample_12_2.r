### Sample_12_2.r
### �f�[�^�𒭂߂�

data <- read.csv("data_Males_full.csv") # �f�[�^�ǂݍ���
head(data)	# �f�[�^�̖`������
summary(data) # �f�[�^�̊�{���v��

par(mfrow=c(3,1)) # �����O���t�̔z�u���w��
hist(data$wage)
hist(data$school)
hist(data$exper)