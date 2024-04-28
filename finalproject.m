%Final Project Lauren, Manica, Anshika 
%4/14/2024

%data for US, China, India, UK, Brazil, Egypt 



%% 
%export emissions in MTCO2 not per person

totalcarbonemissions=table2array(countryemissions);

% Delete the first row and the last three rows
array_subsetemissions = totalcarbonemissions(2:end-3, :);

globalemissions=table2array(totalemissions); 
GlobalE= globalemissions*1000000000; %tons 


years=array_subsetemissions(:,1);
Brazil=array_subsetemissions(:,2)*1000000;
China=array_subsetemissions(:,3)*1000000;
Egypt=array_subsetemissions(:,4)*1000000;
India=array_subsetemissions(:,5)*1000000;
UK=array_subsetemissions(:,6)*1000000;
USA=array_subsetemissions(:,7)*1000000;

figure, clf
hold on
plot(years, Brazil, 'Color', 'g', 'LineWidth', 2)
plot(years, China, 'Color', 'k', 'LineWidth', 2)
plot(years, Egypt, 'Color', 'c','LineWidth', 2)
plot(years, India, 'Color', 'm','LineWidth', 2)
plot(years, UK, 'Color', 'r','LineWidth', 2)
plot(years, USA, 'Color', 'b','LineWidth', 2)
plot(years, GlobalE,'LineStyle','--', 'Color', 'k', 'LineWidth',2)
ax = gca;
ax.YAxis.Exponent = 0
ax.YAxis.TickLabelFormat = '%,.0f';
grid on
xlabel('Years from 1960-2022')
ylabel('Emissions (Metric Tonnes of CO2)')
title('Country CO2 Emissions vs Global')
legend('Brazil', 'China', 'Egypt', 'India', 'UK', 'USA', 'Global')

%% Production through Renewables:

rendata = renpercentageproduction
% rendata(1, :) = [];

years=rendata(:,1);
Brazilren=rendata(:,2);
Chinaren=rendata(:,3);
Egyptren=rendata(:,4);
UKren=rendata(:,5);
Indiaren=rendata(:,6);
USren=rendata(:,7);

figure, clf
plot(years, Chinaren, 'LineWidth',2);
hold on;
plot(years, USren, 'LineWidth',2);
plot(years, Indiaren, 'LineWidth',2);
plot(years, UKren,'LineWidth',2);
plot(years, Egyptren, 'LineWidth',2);
plot(years, Brazilren, 'LineWidth',2);
xlabel('Years')
ylabel('% of Total Production (kWh)')
title('Production through Renewables by Country')
legend('China','USA','India','UK','Egypt','Brazil')

%% developed vs. developing countries 

%Dev country
figure(2), clf
subplot(2,1,1)
plot(yearsrenew, USrenew, 'LineWidth',2);
hold on;
plot(yearsrenew, Chinarenew, 'LineWidth',2);
plot(yearsrenew, UKrenew, 'LineWidth',2);
xlabel('Years')
ylabel('% of Total Production (kWh)')
title('Renewable Energy Production: Developed Countries')
legend('China','UK','USA')
subplot(2,1,2)
plot(yearsrenew, Indiarenew, 'LineWidth',2);
hold on;
plot(yearsrenew, Brazilrenew,  'LineWidth',2);
plot(yearsrenew, Egyptrenew, 'LineWidth',2);
xlabel('Years')
ylabel('% of Total Production (kWh)')
title('Renewable Energy Production: Developing Countries')
legend('India','Brazil','Egypt')

%% 
















