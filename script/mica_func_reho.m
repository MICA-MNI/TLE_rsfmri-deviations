function reho = mica_func_reho(ts_data, neighbors, lh_mask, rh_mask, lh_surf, rh_surf)
% input:
%   ts_data: timeseries (n regions x m timepoints)
%   neighbors: number of closest neighbors (eg., 1)
%   lh_mask/rh_mask: mask of cortex area
%   lh_surf/rh_surf: surface annotation
% output:
%   reho: vertex-wise reho (regional homogeneity)
    
    ts_data_lh = ts_data(:, 1:end/2)';
    ts_data_rh = ts_data(:, end/2+1:end)';
    lh_reho = y_reho_Surf(ts_data_lh, neighbors, lh_mask, lh_surf, 1);
    rh_reho = y_reho_Surf(ts_data_rh, neighbors, rh_mask, rh_surf, 1);
    lr_reho = [lh_reho; rh_reho];
end
