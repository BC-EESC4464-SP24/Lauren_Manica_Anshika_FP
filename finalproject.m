%Final Project Lauren, Manica, Anshika 
%4/14/2024

%data for US, China, India, UK, Brazil, Egypt 

%% 
%loading in CO2 emissions data 

CO2data=table2array(exportemissions);

%delete first two nan rows 
CO2data(1:2, :) = [];

years=CO2data(:,1);
BrazilCO2=CO2data(:,2);
ChinaCO2=CO2data(:,3);
EgyptCO2=CO2data(:,4);
IndiaCO2=CO2data(:,5);
UKCO2=CO2data(:,6);
USCO2=CO2data(:,7);

figure, clf
plot(years, BrazilCO2, 'Color', 'g')
hold on 
plot(years, ChinaCO2, 'Color', 'r')
plot(years, USCO2, 'Color','m')
plot(years, IndiaCO2, 'Color', 'b')
plot(years, UKCO2, 'Color', 'c')
plot(years, EgyptCO2, 'Color', 'k')
xlabel('Years')
ylabel('emissions (Megatonnes CO2)')
title('CO2 Emissions By Country')
legend('Brazil','China', 'USA', 'India','UK','Egypt','Location', 'northwest')
%% 
%world map of CO2 emisisons per capita for year 2022

figure, clf
worldmap world





