points = [1:5; 10, 15, 20, 25, 30];

actualData = xlsread("MA132Proj/malaria-deaths-by-age.xlsx");

pointsX = [1:5];
pointsY = [9, 6, 22, 19, 55];

%splitData = zeros(28, 6468, 100);
%{
for i = length(actualData)/28
    splitData = [[1990:2017], actualData(2,[i*28:i*28+28]), i];
end
%}
P = polyfit(pointsX, pointsY, 1);

figure(1);
scatter(pointsX, pointsY);
hold on;
fplot(poly2sym(P));
xlim([0, 5]);
ylim([0, 100]);

dP = polyder(P);



figure(2);
fplot(poly2sym(dP));