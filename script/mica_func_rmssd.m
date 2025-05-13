function rmssd = mica_func_rmssd(ts_data)
% input: 
%   timeseries (n regions x m timepoints)
% output: 
%   vertex-wise rmssd (root mean square of successive differences)
    
    [n_timepoints, n_regions] = size(ts_data);
    mean_ts = mean(ts_data, 2);
    rmssd = zeros(n_regions, 1);
    for j = 1:n_regions
        differences_squared = diff(ts_data(:, j) - mean_ts).^2;
        rmssd(j) = sqrt(sum(differences_squared)) / (n_timepoints - 1);
    end
end
