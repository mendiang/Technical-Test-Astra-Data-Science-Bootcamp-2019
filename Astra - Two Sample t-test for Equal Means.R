#Two array of numbers
a = c(175, 168, 168, 190, 156, 181, 182, 175, 174, 179)
b = c(185, 169, 173, 173, 188, 186, 175, 174, 179, 180)
#Normality Test
shapiro.test(a)
shapiro.test(b)
#Using a F-test to verify the homoskedasticity (homogeneity of variances).
var.test(a,b)
#Compare the value of F obtained with the tabulated value of F 
qf(0.95, 9, 9)
#The function t.test for homogeneous variances
t.test(a,b, var.equal=TRUE, paired=FALSE)
#Compare the value of t-computed with the tabulated t-value
qt(0.975, 18)