%% Compartiments plots for GSSEM
time = length(x);   % Number of steps
t=0:time;           % time for y variables
t2=1:time;          % time for x variables
%
P1 = y(1:time+1,1);
P2 = y(1:time+1,2);
P3 = y(1:time+1,3);
H1 = y(1:time+1,4);
H2 = y(1:time+1,5);
H3 = y(1:time+1,6);
C1 = y(1:time+1,7);
C2 = y(1:time+1,8);
NumHH = y(1:time+1,13);
RP = y(1:time+1,11);
IRP = y(1:time+1,12);
ERP = y(1:time+1,24);

P1e = yc(1:time+1,1);
P2e = yc(1:time+1,2);
P3e = yc(1:time+1,3);
H1e = yc(1:time+1,4);
H2e = yc(1:time+1,5);
H3e = yc(1:time+1,6);
C1e = yc(1:time+1,7);
C2e = yc(1:time+1,8);
NumHHe = yc(1:time+1,13);
RPe = yc(1:time+1,11);
IRPe = yc(1:time+1,12);
ERPe = yc(1:time+1,24);
%
%% Escalamiento
P1e = (P1e-min(P1))/(max(P1)-min(P1));
P2e = (P2e-min(P2))/(max(P2)-min(P2));
P3e = (P3e-min(P3))/(max(P3)-min(P3));
H1e = (H1e-min(H1))/(max(H1)-min(H1));
H2e = (H2e-min(H2))/(max(H2)-min(H2));
H3e = (H3e-min(H3))/(max(H3)-min(H3));
C1e = (C1e-min(C1))/(max(C1)-min(C1));
C2e = (C2e-min(C2))/(max(C2)-min(C2));
%NumHHe = (NumHHe-min(NumHH))/(max(NumHH)-min(NumHH));
RPe = (RPe-min(RP))/(max(RP)-min(RP));
IRPe = (IRPe-min(IRP))/(max(IRP)-min(IRP));
ERPe = (ERPe-min(ERP))/(max(ERP)-min(ERP));

P1 = (P1-min(P1))/(max(P1)-min(P1));
P2 = (P2-min(P2))/(max(P2)-min(P2));
P3 = (P3-min(P3))/(max(P3)-min(P3));
H1 = (H1-min(H1))/(max(H1)-min(H1));
H2 = (H2-min(H2))/(max(H2)-min(H2));
H3 = (H3-min(H3))/(max(H3)-min(H3));
C1 = (C1-min(C1))/(max(C1)-min(C1));
C2 = (C2-min(C2))/(max(C2)-min(C2));
%NumHH = (NumHH-min(NumHH))/(max(NumHH)-min(NumHH));
RP = (RP-min(RP))/(max(RP)-min(RP));
IRP = (IRP-min(IRP))/(max(IRP)-min(IRP));
ERP = (ERP-min(ERP))/(max(ERP)-min(ERP));


%% Figure 15
Temp = y(:,27);
beta1 = x(:,68)*100;
beta2 = x(:,69)*100;
beta3 = x(:,70)*100;
mHHe =  x(:,74)*1000;
mHHgw = x(:,77)*1000;
%
figure('units','normalized','outerposition',[0 0 .7 1])
hold on
yyaxis left
plot(t,Temp,'*b','LineWidth',3);
xlabel('\fontsize{24} year')
ylabel('\fontsize{24} temperature °C')
%axis([1 100 25.5 29])
yyaxis right
hold on
plot(t2,mHHe,'r','LineWidth',3)
plot(t2,mHHgw,'ro','LineWidth',2)
axis([1 100 5 8.5])
ylabel('\fontsize{24} Death rate (per 1000 people)')
legend('T','\mu_{baseline}','\mu_{study case}','Location','north','Orientation','horizontal')
set(gca,'FontSize',20)
grid
hold off
%print -djpeg 'C:\Users\pbl_t\Documents\Investigación\Papers\Escritura\Calentamiento Global (Sinue)\Figuras\Figure_15' -r300

%% Figure 16
Temp = y(:,27);
beta1 = x(:,68)*100;
beta2 = x(:,69)*100;
beta3 = x(:,70)*100;
%
figure('units','normalized','outerposition',[0 0 .7 1])
hold on
yyaxis left
plot(t,Temp,'*b','LineWidth',3);
xlabel('\fontsize{24} year')
ylabel('\fontsize{24} temperature °C')
%axis([1 100 25.5 29])
yyaxis right
hold on
plot(t2,beta1,'r','LineWidth',3)
plot(t2,beta2,'ro',t2,beta3,'r+','LineWidth',2)
axis([1 100 0 1.1])
ylabel('\fontsize{24} growth factor (x10^{2})')
legend('T','\gamma_{1}_{T}','\gamma_{2}_{T}','\gamma_{3}_{T}','Location','north','Orientation','horizontal')
set(gca,'FontSize',20)
grid
hold off
%print -djpeg 'C:\Users\pbl_t\Documents\Investigación\Papers\Escritura\Calentamiento Global (Sinue)\Figuras\Figure_16' -r300


%
%% PLANTS
figure('units','normalized','outerposition',[0 0 1 1])
%subplot(2,2,1)
hold on
plot(t,P1,'b-',t,P2,'r-',t,P3,'g-','LineWidth',3)
plot(t,P1e,'b--',t,P2e,'r--',t,P3e,'g--','LineWidth',3)
axis([1 100 -0.1 1])
%title('Plants','FontSize', 16,'FontWeight', 'bold');
ylabel('\fontsize{24} mass units')
xlabel('\fontsize{24} year')
legend('P1','P2','P3','Location','north','Orientation','horizontal')
set(gca,'FontSize',20)
%{
annotation('textbox',[.13 .54 .1 .1], ...
    'String','a)','EdgeColor','none','FontSize',20,'FontWeight','bold')
annotation('textbox',[.57 .54 .1 .1], ...
    'String','b)','EdgeColor','none','FontSize',20,'FontWeight','bold')
annotation('textbox',[.13 .07 .1 .1], ...
    'String','c)','EdgeColor','none','FontSize',20,'FontWeight','bold')
annotation('textbox',[.57 .07 .1 .1], ...
    'String','d)','EdgeColor','none','FontSize',20,'FontWeight','bold')
%}
grid
%print -djpeg 'C:\Users\pbl_t\Documents\Investigación\Papers\Escritura\Calentamiento Global (Sinue)\Figuras\Figure_17' -r300


%% HERBIVORES
figure('units','normalized','outerposition',[0 0 1 1])
%figure
%subplot(2,2,2)
hold on
%set(gca,'fontsize',18)
plot(t,H1,'b-',t,H2,'r-',t,H3,'g-','LineWidth',3)
plot(t,H1e,'b--',t,H2e,'r--',t,H3e,'g--','LineWidth',3)
%title('Herbivores','FontSize', 16,'FontWeight', 'bold');
ylabel('\fontsize{24} mass units')
xlabel('\fontsize{24} year')
legend('H1','H2','H3','Location','north','Orientation','horizontal')
set(gca,'FontSize',20)
%axis([1 100 -0.1 1.5])
grid
%print -djpeg 'C:\Users\pbl_t\Documents\Investigación\Papers\Escritura\Calentamiento Global (Sinue)\Figuras\Figure_18' -r300

%% CARNIVORES & HUMANS
%subplot(2,2,3)
figure('units','normalized','outerposition',[0 0 1 1])
hold on
%set(gca,'fontsize',18)
yyaxis left
h1=plot(t,C1,'b-','LineWidth',3);
h2=plot(t,C1e,'b--','LineWidth',3);
h3=plot(t,C2,'r-','LineWidth',3);
h4=plot(t,C2e,'r--','LineWidth',3);
%title('Carnivores and Humans','FontSize', 16,'FontWeight', 'bold');
ylabel('\fontsize{24} mass units')
xlabel('\fontsize{24} year')
ax = gca; % Obtiene el objeto de los ejes actuales
ax.YColor = 'black'; % Establece el color del eje izquierdo a negro
yyaxis right
h5=plot(t,NumHH,'g-','LineWidth',3);
h6=plot(t,NumHHe,'g--','LineWidth',3);
%title('Carnivores and Humans','FontSize', 16,'FontWeight', 'bold');
ylabel('\fontsize{24} population')
xlabel('\fontsize{24} year')
legend([h1 h3 h5],'C1','C2','numHH','Location','south','Orientation','horizontal')
set(gca,'FontSize',20)
ax = gca; % Obtiene el objeto de los ejes actuales
ax.YColor = 'green'; % Establece el color del eje izquierdo a negro
grid
%print -djpeg 'C:\Users\pbl_t\Documents\Investigación\Papers\Escritura\Calentamiento Global (Sinue)\Figuras\Figure_19' -r300

%% POOLS
%subplot(2,2,4)
figure('units','normalized','outerposition',[0 0 1 1])
hold on
%set(gca,'fontsize',18)
plot(t,RP,'b-',t,IRP,'r-',t,ERP,'g-','LineWidth',3)
plot(t,RPe,'b--',t,IRPe,'r--',t,ERPe,'g--','LineWidth',3)
%title('Pools','FontSize', 16,'FontWeight', 'bold');
ylabel('\fontsize{24} mass units')
xlabel('\fontsize{24} year')
legend('RP','IRP','ERP','Location','south','Orientation','horizontal')
set(gca,'FontSize',20)
axis([1 100 -0.2 1.3])
grid
%print -djpeg 'C:\Users\pbl_t\Documents\Investigación\Papers\Escritura\Calentamiento Global (Sinue)\Figuras\Figure_20' -r300
%}
