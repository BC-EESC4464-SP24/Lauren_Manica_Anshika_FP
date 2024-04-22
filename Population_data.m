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

plot(Years, China, 'r', 'DisplayName', 'China');
plot(Years, Egypt, 'k', 'DisplayName', 'Egypt');
plot(Years, UK, 'm', 'DisplayName', 'UK');
plot(Years, US, 'b', 'DisplayName', 'US');
plot(Years, India, 'g', 'DisplayName', 'India');

xlabel('Year');
ylabel('Population');
title('Population Over Time');
legend('show');
