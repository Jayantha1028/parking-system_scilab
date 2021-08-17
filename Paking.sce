image = imread("C:\Users\jayantha nayak\Documents\un\PROJECT\MINI PROJECT\input\park6.jpg"); 
background=imread("C:\Users\jayantha nayak\Documents\un\PROJECT\MINI PROJECT\input\park1.jpg");
img =double(rgb2gray(image));
bg =double(rgb2gray(background));
[height width] = size(img);
totalslot=38;
thresh=60;
h=1/25.*ones(5,5);
i=imfilter(img,h);
b=imfilter(bg,h);
fr_diff = abs(i-b);
for j = 1:width
for k = 1:height
if (fr_diff(k,j)>=thresh)
fg(k,j) = img(k,j);
else
fg(k,j) = 0;
end
end
end 
s1=0
s2=0
s3=0
s4=0
s5=0
s6=0
c1=fg(1:125,1:245);
c2=fg(1:125,245:489);
c3=fg(126:251,1:245);
c4=fg(126:251,245:489);
c5=fg(251:377,1:245);
c6=fg(251:377,245:489);
for i=1:125
    for j=1:244
        s1=s1+c1(i,j)
        s2=s2+c2(i,j)
        s3=s3+c3(i,j)
        s4=s4+c4(i,j)
        s5=s5+c5(i,j)
        s6=s6+c6(i,j)    
end
end
disp('The sum of pixels of segments :')
disp(s1)
disp(s2)
disp(s3)
disp(s4)
disp(s5)
disp(s6)
y=0
if s6<500000 then
   y=6
end
if s5<500000 then
   y=5
end
if s4<500000 then
   y=4
end
if s3<500000 then
   y=3
end
if s2<500000 then
   y=2
end
if s1<500000 then
   y=1
end

if (y~=0) then
disp(' ')
disp('The best parking lot is lot number');
end
if y==0 then
disp(' ')
disp('FILLED , WAIT');
end
if y==1 then
   i = imread("C:\Users\jayantha nayak\Documents\un\PROJECT\MINI PROJECT\1_.png"); 
 figure
 imshow(i);title("ONE");
end
if y==2 then
   i = imread("C:\Users\jayantha nayak\Documents\un\PROJECT\MINI PROJECT\2_.png"); 
 figure
 imshow(i);title("TWO");
end
if y==3 then
   i = imread("C:\Users\jayantha nayak\Documents\un\PROJECT\MINI PROJECT\3_.png"); 
 figure
 imshow(i);title("THREE");
end
if y==4 then
   i = imread("C:\Users\jayantha nayak\Documents\un\PROJECT\MINI PROJECT\4_.png"); 
 figure
 imshow(i);title("FOUR");
end
if y==5 then
   i = imread("C:\Users\jayantha nayak\Documents\un\PROJECT\MINI PROJECT\5_.png"); 
 figure
 imshow(i);title("FIVE");
end
if y==6 then
 i = imread("C:\Users\jayantha nayak\Documents\un\PROJECT\MINI PROJECT\6_.png"); 
 figure
 imshow(i);title("SIX");
end
