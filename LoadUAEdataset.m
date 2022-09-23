function DS = LoadUAEdataset(datasetname)

    DATA = h5read(['MULTIVARIATE_DATASETS/',datasetname,'/',datasetname,'_DATA.h5'], '/data');
    DATA = permute(DATA, [3, 2, 1]);
    LABEL  = h5read(['MULTIVARIATE_DATASETS/',datasetname,'/',datasetname,'_LABEL.h5'], '/data');
   
    %DATA = zscore(DATA,[],2);

    DS.DataClassLabels = [LABEL+1];
    DS.Data = [DATA];
    DS.ClassNames = unique(LABEL);
    DS.DataInstancesCount = length(DS.Data(:,1));
end
