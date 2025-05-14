function [HC_wscore, PX_wscore] = mica_wscore(data_HC, cov_HC, data_PX, cov_PX)
    % W‐score  =  (actual – expected) / SD(residuals)
    % data_HC: HC_nums x 1
    % data_PX: PX_nums x 1
    % cov_HC:  HC_nums x variables
    % cov_PX:  PX_nums x variables
    
    % build linear regression model
    real_HC = data_HC;
    model   = fitlm(cov_HC, real_HC); % LM = FITLM(X, Y)
    pred_HC = predict(model, cov_HC); % YP = PREDICT(MODEL, DATA, K)
    % compute standard deviation of residuals
    resi = pred_HC - real_HC;
    resi_std = std(resi);
    % predict PX's TV
    pred_PX = predict(model, cov_PX);
    % compute PX's w-score
    real_PX = data_PX;
    PX_wscore = (real_PX - pred_PX) / resi_std;
    HC_wscore = (real_HC - pred_HC) / resi_std;
end