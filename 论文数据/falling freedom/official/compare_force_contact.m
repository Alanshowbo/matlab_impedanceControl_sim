clear;
Ftimeseries=load('compare_force_contact_Fe.mat');
Xtimeseries=load('compare_force_contact_X.mat');
t=Ftimeseries.Fe.time;
Fe=Ftimeseries.Fe.Data(:,6);
X=Xtimeseries.X.Data;
X1=X(1,6,:);
%X2=zeros(20001);
X2=[];
for i=1:10001
    X2(i)=X1(1,1,i);
end 

[Ax,h1,h2]=plotyy(t,X2,t,Fe);
set(get(Ax(1),'Ylabel'),'String','������Z���λ��/m','fontsize',32);
set(get(Ax(2),'Ylabel'),'String','ƽ��������/N','fontsize',32);

set(Ax(1),'Fontsize',30) % handles����ָ������������ľ��
set(Ax(2),'Fontsize',30) % handles����ָ������������ľ��

set(Ax(1),'ylim',[0 0.3]) % handles����ָ������������ľ��
set(Ax(2),'YLim',[0 300]) % handles����ָ������������ľ��
%set(h1,'XTick',0:1:10) % handles����ָ������������ľ��
set(Ax(1),'YTick',0:0.1:0.3) % handles����ָ������������ľ��
set(Ax(2),'YTick',0:50:300) % handles����ָ������������ľ��

l1=xlabel('ʱ��/s','fontsize',30);

set(h1,'lineStyle','--','linewidth',2.0);
set(h2,'lineStyle','-','linewidth',2.0);

k1=legend('����λ��','��ײ��','fontsize',28);
%k2=title('��1�迹��������','fontsize',15);

% h=figure(1);
% set(h,'color','w');
% set(gca,'fontsize',20);
% set(Ax(2),'Fontsize',20);
set(Ax(1),'XTick',0:1:10);
% hold on