points = [1:5; 10, 15, 20, 25, 30];

actualData = xlsread("MA132Proj/malaria-deaths-by-age.xlsx");

pointsX = [1:5];
pointsY = [10, 15, 20, 25, 30];

P = polyfit(pointsX, pointsY, 1);

figure(1);
scatter(pointsX, pointsY);
hold on;
fplot(poly2sym(P));
xlim([0, 5]);
ylim([0, 50]);




figure(2);
scatter(actualData(1:end, 1), actualData(1:end, 2));