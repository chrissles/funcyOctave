function[y_input, t_reg, y_reg, t, y] = makeRegPACE(dat, t_reg)
ncohort=max(dat(:,1));
y=cell(1,ncohort);
t=cell(1,ncohort);
newy = y;
newt = t;
xi=[];
regular = 0;

for i=1:ncohort
index=find(dat(:,1)==i);
t{i}=dat(index,3)';            
y{i}=dat(index, 2)';
end

if isa(t,'cell')
tempt=cell2mat(t);
tempp=setOptions('newdata',t_reg,'verbose','on');
y_input=FPCA(y, t, tempp);  
tempy=getVal(y_input,'y_pred');
y_reg=cell2mat(tempy')';
clear tempt tempp tempy;
else
y_reg=y';
t_reg=t;
end

end
