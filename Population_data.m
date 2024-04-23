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
plot(Years, China, 'r', 'DisplayName', 'China','LineWidth', 2);
plot(Years, Egypt, 'k', 'DisplayName', 'Egypt','LineWidth', 2);
plot(Years, UK, 'm', 'DisplayName', 'UK','LineWidth', 2);
plot(Years, US, 'b', 'DisplayName', 'US','LineWidth', 2);
plot(Years, India, 'g', 'DisplayName', 'India','LineWidth', 2);
plot(Years, Brazil, 'c', 'DisplayName', 'Brazil','LineWidth', 2);
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
plot(Years, China, 'r', 'DisplayName', 'China','LineWidth', 2);
plot(Years, UK, 'm', 'DisplayName', 'UK','LineWidth', 2);
plot(Years, US, 'b', 'DisplayName', 'US','LineWidth', 2);
ax = gca;
ax.YAxis.Exponent = 0
ax.YAxis.TickLabelFormat = '%,.0f';
legend('show');
grid on


subplot(2,1,2);
title('Developing Countries Population');
hold on
plot(Years, India, 'g', 'DisplayName', 'India','LineWidth', 2);
plot(Years, Brazil, 'c', 'DisplayName', 'Brazil','LineWidth', 2);
plot(Years, Egypt, 'k', 'DisplayName', 'Egypt','LineWidth', 2);
ax = gca;
ax.YAxis.Exponent = 0
ax.YAxis.TickLabelFormat = '%,.0f';
legend('show');
grid on

%% World Map

plot(worldmap);
load coastlines

