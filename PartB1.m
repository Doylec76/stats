M = readmatrix('FormatedData.xlsx','Range','A2:FW151');

Arts_Morning_Average = (M(:,4) + M(:,19) + M(:,34) + M(:,49))/4;
Arts_Afternoon_Average = (M(:,9) + M(:,24) + M(:,39) + M(:,54))/4;
Arts_Evening_Average = (M(:,14) + M(:,29) + M(:,44) + M(:,59))/4;

Front_Morning_Average = (M(:,64) + M(:,79) + M(:,94) + M(:,109))/4;
Front_Afternoon_Average = (M(:,69) + M(:,84) + M(:,99) + M(:,114))/4;
Front_Evening_Average = (M(:,74) + M(:,89) + M(:,104) + M(:,119))/4;

Sports_Morning_Average = (M(:,124) + M(:,139) + M(:,154) + M(:,169))/4;
Sports_Afternoon_Average = (M(:,129) + M(:,144) + M(:,159) + M(:,174))/4;
Sports_Evening_Average = (M(:,134) + M(:,149) + M(:,164) + M(:,179))/4;

figure Name 'Arts';
subplot(1,1,1);
x = linspace(0,750,150);
y = transpose(Arts_Morning_Average);
plot(x,y,'b-*')
title('Sound Level vs Time for Nassu St Entrance')
xlabel('Time averaged over 5s interval (s)')
ylabel('Sound Level (dB)')

hold on 

subplot(1,1,1);
x = linspace(0,750,150);
y = transpose(Arts_Afternoon_Average);
plot(x,y,'g-*')

hold on 

subplot(1,1,1);
x = linspace(0,750,150);
y = transpose(Arts_Evening_Average);
plot(x,y,'r-*')
legend('Morning','Afternoon','Evening')


figure Name 'Front';
subplot(1,1,1);
x = linspace(0,750,150);
y = transpose(Front_Morning_Average);
plot(x,y,'b-*')
title('Sound Level vs Time for Dame St Entrance')
xlabel('Time averaged over 5s interval (s)')
ylabel('Sound Level (dB)')

hold on 

subplot(1,1,1);
x = linspace(0,750,150);
y = transpose(Front_Afternoon_Average);
plot(x,y,'g-*')

hold on 

subplot(1,1,1);
x = linspace(0,750,150);
y = transpose(Front_Evening_Average);
plot(x,y,'r-*')

legend('Morning','Afternoon','Evening')

figure Name 'Sports';
subplot(1,1,1);
x = linspace(0,750,150);
y = transpose(Sports_Morning_Average);
plot(x,y,'b-*')
title('Sound Level vs Time for Pearse St Entrance')
xlabel('Time averaged over 5s interval (s)')
ylabel('Sound Level (dB)')

hold on 

subplot(1,1,1);
x = linspace(0,750,150);
y = transpose(Sports_Afternoon_Average);
plot(x,y,'g-*')

hold on
subplot(1,1,1);
x = linspace(0,750,150);
y = transpose(Sports_Evening_Average);
plot(x,y,'r-*')

legend('Morning','Afternoon','Evening')


