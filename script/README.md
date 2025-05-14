### Custome Code
- mica_func_reho: code for computing [ReHo](https://journals.sagepub.com/doi/10.1177/1073858415595004) (regional homogeneity) for each area
- mica_func_rmssd: code for computing RMSSD (root mean square of successive differences) for each area
- mica_wscore: code for computing w-score map for each individual and each area
- mica_epicenter: code for identifying structural epicenters

### Machine Learning
- model: supported vector machine (SVM)
- parameters: log2c = -5:0.2:5, log2g = -5:0.2:5
- optimization: nested 5-fold cross-validation
- performance metrics: accuracy, AUC curve
- null models: 1,000 permutation tests

### Open Software
- libsvm (https://github.com/cjlin1/libsvm)
- spm12 (https://www.fil.ion.ucl.ac.uk/spm/software/spm12/)
