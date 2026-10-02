
%% SIH 2026 - Baseline Results Dashboard
% Crashless Team
% Uses documented baseline results - no simulation rerun

clc;
close all;

%% Baseline results

Scenario = ["Village"; "Urban"; "Highway"; ...
            "Dense Market"; "Cattle"];

Minimum_TTC = [0.6932; 0.94448; 2.6154; 0.96614; 0.42755];

Maximum_Risk = [2; 2; 1; 2; 2];

Replanning_Samples = [27; 13; 5; 30; 26];

Min_Clearance = [3.2634; 4.0147; 17.9513; ...
                 6.3051; 2.1042];

Smoothness = [0.0786; 0.079428; 0.075498; ...
              0.084153; 0.082574];

%% Create summary table

resultsTable = table(Scenario, Minimum_TTC, Maximum_Risk, ...
    Replanning_Samples, Min_Clearance, Smoothness);

disp('BASELINE RESULTS');
disp(resultsTable);

%% Dashboard window

fig = uifigure('Name', ...
    'SIH 2026 - Crashless Dashboard', ...
    'Position', [100 100 1200 700]);

gl = uigridlayout(fig, [4 2]);

gl.RowHeight = {'0.5x', '1.5x', '2x', '2x'};
gl.ColumnWidth = {'1x', '1x'};

%% Title

titleLabel = uilabel(gl, ...
    'Text', 'CRASHLESS | PERFORMANCE DASHBOARD', ...
    'FontSize', 20, ...
    'FontWeight', 'bold', ...
    'HorizontalAlignment', 'center');

titleLabel.Layout.Row = 1;
titleLabel.Layout.Column = [1 2];

%% Results table

tableUI = uitable(gl, ...
    'Data', resultsTable, ...
    'ColumnName', resultsTable.Properties.VariableNames, ...
    'RowName', [], ...
    'FontSize', 12);

tableUI.Layout.Row = 2;
tableUI.Layout.Column = [1 2];

%% Minimum TTC chart

ax1 = uiaxes(gl);

bar(ax1, Minimum_TTC);

ax1.XTick = 1:5;
ax1.XTickLabel = Scenario;
ax1.XTickLabelRotation = 30;

ax1.Title.String = 'Minimum TTC';
ax1.YLabel.String = 'TTC (seconds)';
ax1.GridLineStyle = ':';

ax1.Layout.Row = 3;
ax1.Layout.Column = 1;

%% Minimum Clearance chart

ax2 = uiaxes(gl);

bar(ax2, Min_Clearance);

ax2.XTick = 1:5;
ax2.XTickLabel = Scenario;
ax2.XTickLabelRotation = 30;

ax2.Title.String = 'Minimum Clearance';
ax2.YLabel.String = 'Distance (m)';
ax2.GridLineStyle = ':';

ax2.Layout.Row = 3;
ax2.Layout.Column = 2;

%% Replanning chart

ax3 = uiaxes(gl);

bar(ax3, Replanning_Samples);

ax3.XTick = 1:5;
ax3.XTickLabel = Scenario;
ax3.XTickLabelRotation = 30;

ax3.Title.String = 'Replanning Samples';
ax3.YLabel.String = 'Samples';
ax3.GridLineStyle = ':';

ax3.Layout.Row = 4;
ax3.Layout.Column = 1;

%% Overall summary

overallText = sprintf([ ...
    'SCENARIOS TESTED: 5\n' ...
    'DOCUMENTED BASELINE SCR: 100%% (5/5)\n' ...
    'CFR WITH 1 m THRESHOLD: 100%%\n' ...
    'OVERALL MINIMUM CLEARANCE: %.4f m\n' ...
    'SMOOTHNESS RANGE: %.4f - %.4f rad/sample'], ...
    min(Min_Clearance), min(Smoothness), max(Smoothness));

summaryLabel = uilabel(gl, ...
    'Text', overallText, ...
    'FontSize', 14, ...
    'FontWeight', 'bold', ...
    'HorizontalAlignment', 'center', ...
    'VerticalAlignment', 'center');

summaryLabel.Layout.Row = 4;
summaryLabel.Layout.Column = 2;

%% Dashboard complete

disp('Baseline dashboard created successfully.');