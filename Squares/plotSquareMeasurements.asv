%% Extract data from readings

measurements = zeros([40, 4]);
for i = 1:4
    results = readmatrix("Measurements\Measure"+string(i)+"\Results.csv");
    measurements(:, i) = results(2:end, 7);
end

measurementsdry = measurements(1:36, :);
measurementswet = measurements(37:40, :);

%%
% figure for each day
% Aalphabeta Balphabeta Calphabeta

for i = 1:4
    figure();
    bar([mean(measurementsdry(1:12, i)) mean(measurementsdry(2:2:12, i));...
        mean(measurementsdry(13:24, i)) mean(measurementsdry(14:2:24, i)); ...
        mean(measurementsdry(25:36, i)) mean(measurementsdry(26:2:36, i))]);
end

%%
% Aalphabeta Balphabeta Calphabeta

figure()
bar([mean(mean(measurementsdry(1:12, :))) mean(mean(measurementsdry(2:2:12, :)));...
    mean(mean(measurementsdry(13:24, :))) mean(mean(measurementsdry(14:2:24, :))); ...
    mean(mean(measurementsdry(25:36, :))) mean(mean(measurementsdry(26:2:36, :)))]);

%%
% 1 2 3 mm
bar([mean(mean(measurementsdry([1:4 13:16 25:28], :)));...
    mean(mean(measurementsdry([5:8 17:20 29:32], :))); ...
    mean(mean(measurementsdry([9:12 21:24 33:36], :)))]);

%% depthbar

subplot(1,2,1);
bar([mean(measurementsdry([1:4 13:16 25:28], 2));...
    mean(measurementsdry([5:8 17:20 29:32], 2)); ...
    mean(measurementsdry([9:12 21:24 33:36], 2))]);
hold on
errorbar([mean(measurementsdry([1:4 13:16 25:28], 2));...
    mean(measurementsdry([5:8 17:20 29:32], 2)); ...
    mean(measurementsdry([9:12 21:24 33:36], 2))], ...
    [std(measurementsdry([1:4 13:16 25:28], 2));...
    std(measurementsdry([5:8 17:20 29:32], 2)); ...
    std(measurementsdry([9:12 21:24 33:36], 2))],...
    'linestyle', 'none', 'color', 'k');
ylim([0 1]);

subplot(1,2,2);
bar([mean(measurementsdry([1:4 13:16 25:28], 4));...
    mean(measurementsdry([5:8 17:20 29:32], 4)); ...
    mean(measurementsdry([9:12 21:24 33:36], 4))]);
hold on
errorbar([mean(measurementsdry([1:4 13:16 25:28], 4));...
    mean(measurementsdry([5:8 17:20 29:32], 4)); ...
    mean(measurementsdry([9:12 21:24 33:36], 4))], ...
    [std(measurementsdry([1:4 13:16 25:28], 4));...
    std(measurementsdry([5:8 17:20 29:32], 4)); ...
    std(measurementsdry([9:12 21:24 33:36], 4))],...
    'linestyle', 'none', 'color', 'k');
ylim([0 1]);

set(gcf, 'Position', [722   433   674   208]);

%% humiditycompare
% A3 vs D
for i = 1:4
    subplot(2,4,i);
    bar([measurementsdry(8+i, 2) measurementswet(i, 2)]); % 18C, 49H, dry
    ylim([0 5]);
    subplot(2,4,i+4);
    bar([measurementsdry(8+i, 4) measurementswet(i, 4)]); % 19C, 75H, wet
    ylim([0 5]);
end

set(gcf, 'position', [488   388   332   370]);

%% positions

for i = 1:4
    subplot(2,4,i);
    bar(measurementsdry([8+i 20+i 32+i], 2));
    ylim([0 1.2]);
    subplot(2,4,i+4);
    bar(measurementsdry([8+i 20+i 32+i], 4));
    ylim([0 1.2]);
end


