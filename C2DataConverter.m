locationRates = readtable("MA132Proj/malaria-death-rates.csv");
%ageRates = readtable("MA132Proj/malaria-deaths-by-age.csv");

locationRatesArray = table2array(locationRates);

locationRatesFive = zeros(height(locationRates), width(locationRates));


j = 1;


for i = 1:height(locationRates)
    if mod(i, 24) == 0 || mod(i, 25) == 0 || mod(i, 26) == 0 || mod(i, 27) == 0 || mod(i, 28) == 0
        locationRatesFive(j) = locationRatesArray(i, 1:4);
        j = j+1;
    end
end
