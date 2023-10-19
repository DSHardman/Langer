%% Extract from file, red

Rperp = readmatrix("RedLowFar");
Rperpup = Rperp(15:71);
Rperpdown = Rperp(71:127);

Rparal = readmatrix("RedHigh");
Rparalup = Rparal(8:25);
Rparaldown = Rparal(25:42);

Rdiag1 = readmatrix("RedDiag1");
Rdiag1up = Rdiag1(10:38);
Rdiag1down = Rdiag1(38:66);

Rdiag2 = readmatrix("RedDiag2");
Rdiag2up = Rdiag2(8:36);
Rdiag2down = Rdiag2(36:64);

%% Extract from file, black

Bperp = readmatrix("BlackLow");
Bperpup = Bperp(7:35);
Bperpdown = Bperp(35:64);

Bparal = readmatrix("BlackHigh");
Bparalup = Bparal(7:21);
Bparaldown = Bparal(21:36);

Bdiag1 = readmatrix("BlackDiag1");
Bdiag1up = Bdiag1(15:32);
Bdiag1down = Bdiag1(32:49);

Bdiag2 = readmatrix("BlackDiag2");
Bdiag2up = Bdiag2(9:25);
Bdiag2down = Bdiag2(25:42);

%% Plot figure

plotcycle(Rperpup, Rperpdown, 26, 10, 'r');
plotcycle(Rparalup, Rparaldown, 26.5, 5, 'r');
plotcycle(Rdiag1up, Rdiag1down, 25.5, 5, 'r');
plotcycle(Rdiag2up, Rdiag2down, 27, 5, 'r');
plotcycle(Bparalup, Bparaldown, 25, 2.5, 'k');

set(gca, 'LineWidth', 2, 'FontSize', 18);
box off
xlabel("Strain (%)");
ylabel("Force (N)");


function plotcycle(up, down, l0, extension, color)
    strain = extension*100/l0;
    plot(0:strain/(length(up)-1):strain, up*0.00981,...
        'color', color, 'linewidth', 2);
    hold on
    plot(strain:-strain/(length(down)-1):0, down*0.00981,...
        'color', color, 'linewidth', 2);
end