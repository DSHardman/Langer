results = zeros(4);

results_t = readmatrix("1st\Results.csv");
results(1,:) = results_t(2:5,7).';

results_t = readmatrix("2nd\Results.csv");
results(2,:) = results_t(2:5,7).';

results_t = readmatrix("3rd\Results.csv");
results(3,:) = results_t(2:5,7).';

results_t = readmatrix("4th\Results.csv");
results(4,:) = results_t(2:5,7).';


fractions = ones(4);
for i = 1:4
    for j = 2:4
        fractions(i,j) = results(i,j)/results(i,1);
    end
end

bar(mean(fractions))
hold on
errorbar(mean(fractions), std(fractions), 'color', 'k', 'linestyle', 'none');
