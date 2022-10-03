//Cross-Over
clc; 
clear;
s1 = grand(1,'prm',1:10)
s2 = grand(1,'prm',1:10)
s31 = s1(1:5)
s32 = s2
//s3
for i=s31
	index = find(s32 == i);
	s32(index) = []
end
disp([s1;s2;s31 s32])
//s4
s41 = s2(1:5)
s42 = s1
for i = s41
	index = find(s42 == i)
	s42(index) = []
end
disp([s1;s2;s41 s42])

