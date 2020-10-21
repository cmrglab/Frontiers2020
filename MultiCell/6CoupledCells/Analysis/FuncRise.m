%Copyright © 2019 Viviane Timmermann, Simula Research Laboratory, Norway
function FuncRise

cd Fib0 
cd Isometric

filename  = strcat('AnalysisAll.mat');
load(filename);
    
kmeansdata(:, 1, 1) = TimeStartDAD(:);

cd ..

cd IsotonicPlateau

filename  = strcat('AnalysisAll1.mat');
load(filename);
    
kmeansdata(:, 2, 1) = TimeStartDAD(:);

filename  = strcat('AnalysisAll2.mat');
load(filename);
    
kmeansdata(:, 2, 4) = TimeStartDAD(:);

cd ..


cd IsotonicSinus

filename  = strcat('AnalysisAll.mat');
load(filename);
    
kmeansdata(:, 3, 1) = TimeStartDAD(:);

cd ..

cd IsotonicSinusoidal

filename  = strcat('AnalysisAll.mat');
load(filename);
    
kmeansdata(:, 4, 1) = TimeStartDAD(:);

cd ..
cd ..

cd Fib1
cd Isometric

filename  = strcat('AnalysisAll.mat');
load(filename);
    
kmeansdata(:, 1, 2) = TimeStartDAD(:);

cd ..

cd IsotonicPlateau

filename  = strcat('AnalysisAll1.mat');
load(filename);
    
kmeansdata(:, 2, 2) = TimeStartDAD(:);


filename  = strcat('AnalysisAll2.mat');
load(filename);
    
kmeansdata(:, 2, 5) = TimeStartDAD(:);

cd ..


cd IsotonicSinus

filename  = strcat('AnalysisAll.mat');
load(filename);
    
kmeansdata(:, 3, 2) = TimeStartDAD(:);

cd ..

cd IsotonicSinusoidal


filename  = strcat('AnalysisAll.mat');
load(filename);
    
kmeansdata(:, 4, 2) = TimeStartDAD(:);

cd ..
cd ..


cd Fib3
cd Isometric

filename  = strcat('AnalysisAll.mat');
load(filename);
    
kmeansdata(:, 1, 3) = TimeStartDAD(:);

cd ..

cd IsotonicPlateau


filename  = strcat('AnalysisAll1.mat');
load(filename);
    
kmeansdata(:, 2, 3) = TimeStartDAD(:);


filename  = strcat('AnalysisAll2.mat');
load(filename);
    
kmeansdata(:, 2, 6) = TimeStartDAD(:);

cd ..


cd IsotonicSinus

filename  = strcat('AnalysisAll.mat');
load(filename);
    
kmeansdata(:, 3, 3) = TimeStartDAD(:);

cd ..

cd IsotonicSinusoidal

filename  = strcat('AnalysisAll.mat');
load(filename);
    
kmeansdata(:, 4, 3) = TimeStartDAD(:);

cd ..
cd ..


figure(1)%Isometric
plot(ones(size(kmeansdata(:,1,1))),kmeansdata(:,1,1),'o')
hold on
errorbar(1,mean(kmeansdata(:,1,1)),std(kmeansdata(:,1,1)))

plot(ones(size(kmeansdata(:,1,2)))*3,kmeansdata(:,1,2),'o')
errorbar(3,mean(kmeansdata(:,1,2)),std(kmeansdata(:,1,2)))

plot(ones(size(kmeansdata(:,1,3)))*5,kmeansdata(:,1,3),'o')
errorbar(5,mean(kmeansdata(:,1,3)),std(kmeansdata(:,1,3)))
axis([1 6 500 2550])


figure(2)%IsotonicPlateau
plot(ones(size(kmeansdata(:,2,1))),kmeansdata(:,2,1),'o')
hold on
errorbar(1,mean(kmeansdata(:,2,1)),std(kmeansdata(:,2,1)))


plot(ones(size(kmeansdata(:,2,4)))*2,kmeansdata(:,2,4),'o')
errorbar(2,mean(kmeansdata(:,2,4)),std(kmeansdata(:,2,4)))

plot(ones(size(kmeansdata(:,2,2)))*3,kmeansdata(:,2,2),'o')
errorbar(3,mean(kmeansdata(:,2,2)),std(kmeansdata(:,2,2)))

plot(ones(size(kmeansdata(:,2,5)))*4,kmeansdata(:,2,5),'o')
errorbar(4,mean(kmeansdata(:,2,5)),std(kmeansdata(:,2,5)))

plot(ones(size(kmeansdata(:,2,3)))*5,kmeansdata(:,2,3),'o')
errorbar(5,mean(kmeansdata(:,2,3)),std(kmeansdata(:,2,3)))

plot(ones(size(kmeansdata(:,2,6)))*6,kmeansdata(:,2,6),'o')
errorbar(6,mean(kmeansdata(:,2,6)),std(kmeansdata(:,2,6)))
axis([1 6 500 2550])


figure(3)%IsotonicSinus
plot(ones(size(kmeansdata(:,3,1))),kmeansdata(:,3,1),'o')
hold on
errorbar(1,mean(kmeansdata(:,3,1)),std(kmeansdata(:,3,1)))

plot(ones(size(kmeansdata(:,3,2)))*3,kmeansdata(:,3,2),'o')
errorbar(3,mean(kmeansdata(:,3,2)),std(kmeansdata(:,3,2)))

plot(ones(size(kmeansdata(:,3,3)))*5,kmeansdata(:,3,3),'o')
errorbar(5,mean(kmeansdata(:,3,3)),std(kmeansdata(:,3,3)))
axis([1 6 500 2550])


figure(4)%IsotonicSinusoidal
plot(ones(size(kmeansdata(:,4,1))),kmeansdata(:,4,1),'o')
hold on
errorbar(1,mean(kmeansdata(:,4,1)),std(kmeansdata(:,4,1)))

% plot(ones(size(kmeansdata(:,4,4)))*2,kmeansdata(:,4,4),'o')
% errorbar(2,mean(kmeansdata(:,4,4)),std(kmeansdata(:,4,4)))

plot(ones(size(kmeansdata(:,4,2)))*3,kmeansdata(:,4,2),'o')
errorbar(3,mean(kmeansdata(:,4,2)),std(kmeansdata(:,4,2)))

% plot(ones(size(kmeansdata(:,4,5)))*4,kmeansdata(:,4,5),'o')
% errorbar(4,mean(kmeansdata(:,4,5)),std(kmeansdata(:,4,5)))

plot(ones(size(kmeansdata(:,4,3)))*5,kmeansdata(:,4,3),'o')
errorbar(5,mean(kmeansdata(:,4,3)),std(kmeansdata(:,4,3)))
axis([1 6 500 2550])
