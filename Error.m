%plot(time,Vel,time,theta,time,Torque,time,simtheta.signals.values,time,simVel.signals.values);%һ��ͼ��������
% [AX,h1,h2]=plotyy(time,[Vel;Torque;simVel.signals.values],time,[theta;simtheta.signals.values]);%һ��ͼ��������
%errvel=simVel.signals.values-Vel;
clc

time=xlsread('C:\Users\wqq\Desktop\Data\Robotdata0.1-0.2-kalman-0.0075-0.05-0.1.csv','V2:V1502');%��ȡ������
Vel=xlsread('C:\Users\wqq\Desktop\Data\Robotdata0.1-0.2-kalman-0.0075-0.05-0.1.csv','B2:B1502');%��ȡ��һ������
theta=xlsread('C:\Users\wqq\Desktop\Data\Robotdata0.1-0.2-kalman-0.0075-0.05-0.1.csv','A2:A1502');%��ȡ�ڶ�������
Torque=xlsread('C:\Users\wqq\Desktop\Data\Robotdata0.1-0.2-kalman-0.0075-0.05-0.1.csv','W2:W1502');%��ȡ����������
errVel=simVel.signals.values-Vel;
errPos=simtheta.signals.values-theta;
 [hAx,h1,h2]=plotyy(time,errVel,time,errPos);
% [hAx,h1,h2]=plotyy(time,[Vel,simVel.signals.values,Torque],time,[theta,simtheta.signals.values]);

h1(1).LineStyle = '-';
% h1(1).Marker='.';
% %h1(1).MarkerSize=7;
% h1(1).MarkerEdgeColor='b';
h1(1).LineWidth=0.7;
% 
% h1(2).Color='r';
% h1(2).LineWidth=1.5;
% 
% h1(3).Color=[0.2,0.3,0];
% h1(3).LineWidth=1.5;
% 
%h2(1).Color='g';
h2(1).LineStyle = '-';
h2(1).LineWidth = 2;
% % h2(1).Marker='*';
% % h2(1).MarkerSize=3;
% h2(1).MarkerEdgeColor='c';
% 
% h2(2).Color='m';
% h2(2).LineStyle = '--';
% h2(2).LineWidth=2;
% 
 ylabel(hAx(1),'�ٶ�ƫ��(deg/s)','fontsize',22) % left y-axis 
 ylabel(hAx(2),'�Ƕ�ƫ��(deg)','fontsize',22) % right y-axis
 set(hAx(1),'ylim',[-2 2]) % handles����ָ������������ľ��
 set(hAx(2),'ylim',[-0.5 0.5]) % handles����ָ������������ľ��
 set(hAx(1),'YTick',-2:0.5:2) % handles����ָ������������ľ��
 set(hAx(2),'YTick',-0.5:0.1:0.5) % handles����ָ������������ľ��
% 
 set(hAx(1),'Fontsize',22) % handles����ָ������������ľ��
 set(hAx(2),'Fontsize',22) % handles����ָ������������ľ��

 k1=legend('�ٶ�ƫ��','�Ƕ�ƫ��','fontsize',16);
 %k2=title('�ؽ�1�迹��������','fontsize',20);
 l1=xlabel('ʱ��/s','fontsize',22);
% l2=ylabel('���ء��ٶȡ��Ƕ�ֵ');
% set(l1,'fontsize',14);
% set(l2,'fontsize',14);
% set(k1,'fontsize',13); 
% set(k2,'fontsize',15);
% 
% errvel=simVel.signals.values-Vel;
% plot(time,errvel);%һ��ͼ��������
% k1=legend('�ٶ����(deg/s)');
% k2=title('��һ�����ٶ����');
% l1=xlabel('ʱ��(t)');
% l2=ylabel('�ٶ����ֵ');
% set(l1,'fontsize',14);
% set(l2,'fontsize',14);
% set(k1,'fontsize',13);
% set(k2,'fontsize',15);

% errtheta=simtheta.signals.values-theta;
% plot(time,errtheta);%һ��ͼ��������
% k1=legend('�Ƕ����(deg/s)');
% k2=title('��һ����Ƕ����');
% l1=xlabel('ʱ��(t)');
% l2=ylabel('�Ƕ����ֵ');
% set(l1,'fontsize',14);
% set(l2,'fontsize',14);
% set(k1,'fontsize',13);
% set(k2,'fontsize',15);