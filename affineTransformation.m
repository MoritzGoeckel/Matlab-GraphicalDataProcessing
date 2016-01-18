function out = affineTransformation( in )
%Affine Transformation
[Z S]=size(in);
out=zeros(Z,S);

T=[0,1,0;1,0,0;0,0,1];
T=inv(T);
in=flipud(in);

for y=1:Z
    for x=1:S
      x1=x-S/2;
      y1=y-Z/2;
      x2=T(1,1)*x1+T(1,2)*y1+T(1,3);
      y2=T(2,1)*x1+T(2,2)*y1+T(2,3);
      x2=x2+S/2;
      y2=y2+Z/2;
      if(x2>=1)&&(x2<=S)&&(y2>=1)&&(y2<=Z)
        x2=round(x2); %Nearest Neighbor
        y2=round(y2);
        out(y,x)=in(y2,x2);
      end
    end
end
out=flipud(out);