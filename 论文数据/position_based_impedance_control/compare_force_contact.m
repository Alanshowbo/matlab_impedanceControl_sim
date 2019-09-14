clear;
Ftimeseries=load('compare_force_contact_Fe.mat');
Xtimeseries=load('compare_force_contact_X.mat');
RealXtimeseries=load('compare_force_contact_RealX.mat');
t=Ftimeseries.Fe.time;
Fy=Ftimeseries.Fe.Data(:,5);
Fz=Ftimeseries.Fe.Data(:,6);
RealX=RealXtimeseries.RealX.Data;
X=Xtimeseries.X.Data;
X4=X(1,4,:);
X6=X(1,6,:);
X5=X(1,5,:);

RealX4=RealX(:,4);
RealX5=RealX(:,5);
RealX6=RealX(:,6);

XX5=zeros(10001,1);
XX4=zeros(10001,1);
XX6=zeros(10001,1);


for i=1:10001
    XX5(i,1)=X5(1,1,i);
end  
for i=1:10001
    XX4(i,1)=X4(1,1,i);
end 
for i=1:10001
    XX6(i,1)=X6(1,1,i);
end 


[Ax,h1,h2]=plotyy(t,[RealX4,RealX5,RealX6,XX4,XX5,XX6],t,[Fy,Fz]);

set(get(Ax(1),'Ylabel'),'String','������Z���λ��/m','Fontsize',23);
set(get(Ax(2),'Ylabel'),'String','ƽ��������/N','Fontsize',23,'Color','magenta');


set(Ax(1),'Fontsize',22) % handles����ָ������������ľ��
set(Ax(2),'Fontsize',22) % handles����ָ������������ľ��

set(Ax(1),'ylim',[-0.1 0.8]) % handles����ָ������������ľ��
set(Ax(2),'YLim',[-50 400],'YColor','magenta') % handles����ָ������������ľ��
%set(h1,'XTick',0:1:10) % handles����ָ������������ľ��
set(Ax(1),'YTick',-0.1:0.1:0.8) % handles����ָ������������ľ��
set(Ax(2),'YTick',-50:50:400) % handles����ָ������������ľ��

l1=xlabel('ʱ��/s','fontsize',22);

h1(1).Color='b';
h1(1).LineStyle = '-';
%h1(1).Marker='+';
%h1(1).MarkerSize=1;
h1(1).LineWidth = 1.5;
h1(1).MarkerEdgeColor='b';

h1(2).Color='b';
h1(2).LineStyle = ':';
% h1(2).Marker='+';
% h1(2).MarkerSize=1;
h1(2).LineWidth = 2;
h1(2).MarkerEdgeColor='b';

h1(3).Color='b';
h1(3).LineStyle = '--';
% h1(3).Marker='+';
% h1(3).MarkerSize=1;
h1(3).LineWidth = 2;
h1(3).MarkerEdgeColor='b';

h1(4).Color='r';
h1(4).LineStyle = '-';
% h1(4).Marker='diamond';
% h1(4).MarkerSize=1;
h1(4).LineWidth = 1.5;
h1(4).MarkerEdgeColor='r';

h1(5).Color='r';
h1(5).LineStyle = ':';
% h1(5).Marker='diamond';
% h1(5).MarkerSize=1;
h1(5).LineWidth = 2;
h1(5).MarkerEdgeColor='r';

h1(6).Color='r';
h1(6).LineStyle = '--';
% h1(6).Marker='diamond';
% h1(6).MarkerSize=1;
h1(6).LineWidth = 2;
h1(6).MarkerEdgeColor='r';

h2(1).Color='g';
h2(1).LineStyle = '-';
% h2(1).Marker='.';
% h2(1).MarkerSize=0.9;
h2(1).LineWidth = 1.5;
h2(1).MarkerEdgeColor='g';

h2(2).Color='magenta';
h2(2).LineStyle = '-';
% h2(2).Marker='.';
% h2(2).MarkerSize=0.9;
h2(2).LineWidth = 1.5;
h2(2).MarkerEdgeColor='magenta';

k1=legend('����λ��Xdx','����λ��Xdy','����λ��Xdz','ʵ��λ��Xx','ʵ��λ��Xy','ʵ��λ��Xz','�Ӵ���Fy','�Ӵ���Fz','fontsize',16);
%k2=title('��1�迹��������','fontsize',15);

% h=figure(1);
% set(h,'color','w');
% set(gca,'fontsize',20);
% set(Ax(2),'Fontsize',20);
set(Ax(1),'XTick',0:1:5);
% hold on