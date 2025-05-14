function [epi_r, epi_p] = mica_epicenter(grp_sc, data, nullmodels)
% input:
%   grp_sc: group-level sc matrix
%   data: spatial map (n regions x 1)
%   null models
% output:
%   epi_r: epicenter likelihood
%   epi_p: significance of each epicenter via permutation tests

    epi_r = zeros(size(grp_sc, 1), 1);
    epi_p = zeros(size(grp_sc, 1), 1);
    for seed = 1:size(grp_sc, 1)
        disp(seed);
        seed_sc     = grp_sc(:, seed);
        epi_r(seed) = corr(seed_sc, data, 'type', 'spearman');
        epi_p(seed) = perm_sphere_p(seed_sc, data, nullmodels, 'spearman');
    end
end