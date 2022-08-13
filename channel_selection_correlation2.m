clc; clear 
%% load data of BCI comp. III DS IIIa
% load 'C:\Users\anisa\Desktop\Compre_doc\Compre_ppt\RCSP_Toolbox_GPL\EEG_Data\BCI_III_DSIIIa\trainingEEGSignals.mat';
% load 'C:\Users\anisa\Desktop\Compre_doc\Compre_ppt\RCSP_Toolbox_GPL\EEG_Data\BCI_III_DSIIIa\testingEEGSignals.mat';

%% load data of BCI comp. III DS IVa
load 'C:\Users\anisa\Desktop\Compre_doc\Compre_ppt\RCSP_Toolbox_GPL\EEG_Data\BCI_III_DSIVa\trainingEEGSignals.mat';
load 'C:\Users\anisa\Desktop\Compre_doc\Compre_ppt\RCSP_Toolbox_GPL\EEG_Data\BCI_III_DSIVa\testingEEGSignals.mat';
%% channel selection using correlation
sub1_training_data = trainingEEGSignals{1};
sub1_testing_data = testingEEGSignals{1};
%parameters for band pass filtering the signals in the mu+beta band (8-30 Hz)
low = 8;
high = 30;
order = 5; %we use a 5th-order butterworth filter
sub1_trainingEEGSignals = eegButterFilter(sub1_training_data, low, high, order);
sub1_testingEEGSignals = eegButterFilter(sub1_testing_data, low, high, order);
sub1_data = sub1_trainingEEGSignals.x;
sub1_data_new = mean(sub1_data, 3);
sub1_label = sub1_trainingEEGSignals.c;
C3_idx = find(ismember(sub1_label, 'C3'));
% C4_idx = find(ismember(sub1_label, 'C4'));
% Cz_idx = find(ismember(sub1_label, 'Cz'));

non_ref_data = sub1_data_new(:, setdiff(1:length(sub1_label), C3_idx));
% r = corrcoef(sub1_data_new(:, C3_idx),sub1_data_new(:, setdiff(1:length(sub1_label), C3_idx)));
correlation_coef = [];
for i = 1: size(sub1_data_new, 2)
    %     correlation_coef = [correlation_coef; corr(sub1_data_new(:, C3_idx), non_ref_data(:, i))];
        r = corrcoef(sub1_data_new(:, C3_idx), sub1_data_new(:, i));
        correlation_coef = [correlation_coef; r(1,2)];
end
% select_ch_idx = intersect(find(correlation_coef>0.5),find(correlation_coef<0.8));
select_ch_idx1 = find(correlation_coef>0.5);
select_ch_idx2 = find(correlation_coef>0.6);
select_ch_idx3 = find(correlation_coef>0.7);
select_ch_idx4 = find(correlation_coef>0.8);