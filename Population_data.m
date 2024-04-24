POP = POPData
%Import data as a matrix to open
Years = POP(1,2:64);
Brazil = POP(2,2:64);
China = POP(3,2:64);
Egypt = POP(4,2:64);
UK = POP(5,2:64);
US = POP(6,2:64);
India = POP(7,2:64);

hold on;
figure(1); 
plot(Years, China,  'DisplayName', 'China','LineWidth', 2);
plot(Years, Egypt, 'DisplayName', 'Egypt','LineWidth', 2);
plot(Years, UK, 'DisplayName', 'UK','LineWidth', 2);
plot(Years, US, 'DisplayName', 'US','LineWidth', 2);
plot(Years, India, 'DisplayName', 'India','LineWidth', 2);
plot(Years, Brazil, 'DisplayName', 'Brazil','LineWidth', 2);
grid on 

ax = gca;
ax.YAxis.Exponent = 0
ax.YAxis.TickLabelFormat = '%,.0f';
xlabel('Year');
ylabel('Population');
title('Population Over Time');
legend('show');
%% 

figure(2); 

subplot(2,1,1);
title('Developed Countries Population');
hold on
plot(Years, China, 'DisplayName', 'China','LineWidth', 2);
plot(Years, UK, 'DisplayName', 'UK','LineWidth', 2);
plot(Years, US, 'DisplayName', 'US','LineWidth', 2);
ax = gca;
ax.YAxis.Exponent = 0
ax.YAxis.TickLabelFormat = '%,.0f';
legend('show');
grid on


subplot(2,1,2);
title('Developing Countries Population');
hold on
plot(Years, India, 'DisplayName', 'India','LineWidth', 2);
plot(Years, Brazil, 'DisplayName', 'Brazil','LineWidth', 2);
plot(Years, Egypt', 'DisplayName', 'Egypt','LineWidth', 2);
ax = gca;
ax.YAxis.Exponent = 0
ax.YAxis.TickLabelFormat = '%,.0f';
legend('show');
grid on

%% World Map
% Load coastlines data
addpath(genpath('C:\Users\nawazm\Documents\GitHub\Lauren_Manica_Anshika_FP\EDEA Final Project Renewable Data'));
figure;
worldmap('World');
load coastlines;
hold on



country = shaperead('gadm41_EGY_0.shp'); % Read shape file
[X, Y] = reducem(country.X',country.Y',0.01); % Play with tolerance to your liking
 % Make a new figure
geoshow(Y,X,'displaytype','polygon'); % Plot it up, just like above, only faster (lower resolution)
axis off; % Style preference, turn off plot axis and just show country
geoshow(coastlat, coastlon, 'DisplayType', 'line');
% egp = shaperead('gadm41_EGY_0.shp')


