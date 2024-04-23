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
plot(Years, China, 'r', 'DisplayName', 'China');
plot(Years, Egypt, 'k', 'DisplayName', 'Egypt');
plot(Years, UK, 'm', 'DisplayName', 'UK');
plot(Years, US, 'b', 'DisplayName', 'US');
plot(Years, India, 'g', 'DisplayName', 'India');

grid on 

ax = gca;
ax.YAxis.Exponent = 0
ax.YAxis.TickLabelFormat = '%,.0f';
xlabel('Year');
ylabel('Population');
title('Population Over Time');
legend('show');


