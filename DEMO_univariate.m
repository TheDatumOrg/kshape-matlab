function DEMO_univariate(DataSetStartIndex, DataSetEndIndex, thisrun)  
        
    Datasets = [];
    f = dir('DATASETS');
    for i = 3:length(f)
        Datasets = [Datasets; cellstr(f(i).name)];
    end

    % Sort Datasets
    [Datasets, DSOrder] = sort(Datasets);    

    rand_idxs = zeros(length(Datasets),1);
    timing_idxs = zeros(length(Datasets),1);
    results = zeros(length(Datasets),2);
    
    for i = 1:length(Datasets)
            if (i>=DataSetStartIndex & i<=DataSetEndIndex)
                    display(['Dataset being processed: ', char(Datasets(i))]);
                    DS = LoadUCRdataset(char(Datasets(i)));
                    for rep = 1 : 1
			[labels centroids] = kShape_univariate(DS.Data, length(DS.ClassNames));
			disp(RandIndex(labels, DS.DataClassLabels))
			disp(AdjustedRandIndex(labels, DS.DataClassLabels))
			disp(NormalizedMutualInformation(labels, DS.DataClassLabels))
		    end
            end
    end
    
end
