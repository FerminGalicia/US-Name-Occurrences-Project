% ME21, Final Project.

% In our first step, we will create a new function for this titled program
% callled "Untitled."
function Untitled(~,~,plotoptions)

% In this code, we will open and read the text file that contains the
% given slope. 
S1 = fopen('slopepop.txt','r');
frewind(S1);
filedata7 = textscan(S1,'%s','Delimiter','\t');
fclose(S1);

% Here, we will utilize an ordinary array that converts the first column of
% the function.
Fd = filedata7{1};
GivSlope = cell2mat(Fd);

% Here, this code will again open and read the slope file with a text scan.
S2 = fopen('slopeocc.txt','r');
frewind(S2);
filedata6 = textscan(S2,'%s','Delimiter','\t');
fclose(S2);

% This code will take the first column and convert it into an ordinary
% array.
Jdat = filedata6{1};
SlopeGiv = cell2mat(Jdat);

% Again, this code will open and read the text file that contains the
% popularity.
S3 = fopen('popint.txt','r');
frewind(S3);
filedata5 = textscan(S3,'%s','Delimiter','\t');
fclose(S3);

% This code will take the first column and convert it into an ordinary
% array.
W = filedata5{1};
Populc = cell2mat(W);

% Here, this code will open and read the text file.
S4 = fopen('occint.txt','r');
frewind(S4);
filedata4 = textscan(S4,'%s','Delimiter','\t');
fclose(S4);

% Here, this code will take the first column and convert it into an
% ordinary array.
Hdat = filedata4{1};
OrdinInt = cell2mat(Hdat);

% Here, this code will open and read the text file that has the
% occurrences along with a textscan.
S5 = fopen(strcat('occurrences.txt'),'r');
frewind(S5);
filedata3 = textscan(S5,'%s','Delimiter','\t');
fclose(S5);

% Here, we see the same method as above where we use "cell2mat" to create
% an ordinary array.
Evar = filedata3{1};
Fvar = pad(Evar,50,'left','0');
Gvar = cell2mat(Fvar);

% Here, we convert the follwoing string into an array.
Occu = str2num(Gvar);

% This code will open and read the text file that contains the popularity.
S6 = fopen(strcat('popularity.txt'),'r');
frewind(S6);
filedata2 = textscan(S6,'%s','Delimiter','\t');
fclose(S6);

% Here, we take the first column and convert it into an ordinary array.
Cdat=filedata2{1};
Ddat=cell2mat(Cdat);

% This code will convert the following string into an array.
Popul = str2num(Ddat);

% Here, this code will open and read the text file that contains the years.
S7 = fopen(strcat('years.txt'),'r');
frewind(S7);
filedata1 = textscan(S7,'%s','Delimiter','\t');
fclose(S7);

% Here, we will take the first column and convert it into an array.
Ax=filedata1{1};
By=cell2mat(Ax);
givenYear=str2num(By);

% Here, we will implement the "if" function for both plot options.
what2plot = get(plotoptions,'value');
% Here, we create a series of variables where it will use the data and make
% it into a linear fit.
if what2plot == 1
    Ax = Occu;
    L = givenYear;
    By = str2num(OrdinInt);
    B1 = OrdinInt;
    M = str2num(SlopeGiv);
    M1 = SlopeGiv;
    Y1=((M).*(L))+(By);
% Here, we will first plot the occurrences that abides with a specified
% year.
    plot(L,Ax,'o r','linewidth',1)
    hold on
% Fuerthermore, we will plot the slope function.
    plot(L,Y1,'b','linewidth',1)
    hold off
% Here, we will set up variables that label the ranges with respect to x
% and y axis.
    grid
    xlabel('Year','fontsize',14)
    xlim([1880 2020])
    ylabel('Instances Of This Name','fontsize',14)
    ylim([0,100000])
% Here, we will create a title and a legend for the plot function.
    title('Occurences vs Time','fontsize',18)
    legend(['SSN DATA'],['m = ' M1  '  ' 'b = ' B1])
% Here, we will create a list of variables that will make the outcomes more linear and organized.        
elseif what2plot == 2
    Opop = 1000*Popul;
    Nyer = givenYear;
    Ppop = str2num(Populc);
    Q = Ppop*1000;
    R = Populc;
    Sslop = str2num(GivSlope);
    T = Sslop*1000;
    U = GivSlope;
    V = ((T).*(Nyer))+Q;
% This code will plot the popularity that firmly abides with the years.    
    plot(Nyer,Opop,'o r','linewidth',1)
    hold on
% This code will plot the function using the slope formula.
    plot(Nyer,V,'b','linewidth',1)
    hold off
% This list of variables will label the ranges in respect to the x and y axis.   
    grid
    xlabel('Year','fontsize',14)
    xlim([1880 2020])
    ylabel('Popularity Per Thousand Instances','fontsize',14)
    ylim([0,50])
% One last time, we create a title and a legend for the functioning plot. 
    title('Popularity vs Time','fontsize',18)
    legend(['SSN DATA'],['m = ' U  '  ' 'b = ' R])
   
% We finally end the program.    
end

    
