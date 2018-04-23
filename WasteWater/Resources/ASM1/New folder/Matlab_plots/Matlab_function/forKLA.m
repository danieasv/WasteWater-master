

title('Plot information against Kla')
plot(data_std(:,1),data_std(:,2),data_std(:,1),data_std(:,3),data_std(:,1),data_std(:,4),...
data_std(:,1),data_std(:,5),data_std(:,1),data_std(:,6),data_std(:,1),data_std(:,9),data_std(:,1),data_std(:,10));
xlabel("Time");
ylabel('Values');
legend('EffluentQualityEQ.Ya', 'WasteSludge.In.Salk','WasteSludge.In.Sno','WasteSludge.In.Snh','WasteSludge.In.So','WasteSludge.In.Ss', ...
   'Aeration_Energy_AE.Kla5','Aeration_Energy_AE.AE')

% ,data_std(:,1),data_std(:,7),data_std(:,1),data_std(:,8)
%legend('EffluentQualityEQ.Ya', 'WasteSludge.In.Salk','WasteSludge.In.Sno','WasteSludge.In.Snh','WasteSludge.In.So','WasteSludge.In.Ss', ...
%   'Aeration_Energy_AE.Kla3','Aeration_Energy_AE.Kla4','Aeration_Energy_AE.Kla5','Aeration_Energy_AE.AE')