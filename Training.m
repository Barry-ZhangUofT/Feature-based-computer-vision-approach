  clear all
% savepath='File path';
  F=[];
  D=[];
  Dis=[];
  n_train=256*6; %how many pictures are used to train model

  
%build the SIFT vectors
for i=1:n_train
    I=imread(['particles',num2str(i,'%d'),'.png']);   
    
    % SIFT features
    [f,d] = vl_sift(I) ;
    F=[F,f];
    D=[D,d];

    %{
    %Co-variant features
        [f1,d1] = vl_covdet(I,'method','HarrisLaplace') ;
        [f2,d2] = vl_covdet(I,'method','DoG') ;
        d=[d1,d2];
        f=[f1,f2];
    %}

    F=[F,f];
    D=[D,d];

end


%normalize the vectors

T=im2double(D);%transform from unit8 to double
[m,n]=size(T);%m,n still be used following
for i=1:n
    A(1,i)=norm(T(:,i));
end
A=repmat(A,m,1);
Dou=T./A;


%k-means clustering

numClusters = 200 ;%100 centers
count=zeros(n_train,numClusters);
cc=hsv(numClusters);
[centers, assignments] = vl_kmeans(Dou, numClusters);%ever time the order of centers are different


% calculate the histogram of each images

for i=1:n_train

    I=imread(['particles',num2str(i,'%d'),'.png']);   
    I = single(rgb2gray(I)) ;  
    [f,d] = vl_sift(I) ;
    dou=im2double(d);
    double=dou';

     for j=1:length(f)
        dis=pdist2(double(j,:),centers');%the distance between each descriptor and centers
        [m,n]=min(dis);%n is the correlated center vecor
        count(i,n)=count(i,n)+1;
     end
   
end


   
