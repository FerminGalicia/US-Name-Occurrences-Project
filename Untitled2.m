clear all
clc
% This is important.
% So for this separated file, you will have to run this one (Untitled2) but not the
% other one so that it can plot. 

% Here, we will set the variable "figure" with the following units along
% with the function of "axes."
file = figure;
axes = axes(file);
axes.Units = 'pixels';
axes.Position = [50 100 500 280];

% Here, we will create a triple function with the best choices of
% popularity and occurrences.
choose= uicontrol(file,'Style','text','String','Select solution','Position',[165 48 600 20],'fontsize',16);
choices = char('Occurences','Popularity');
options = uicontrol(file,'Style','popup','String',choices,'Position',[390 30 160 15],'fontsize',14);

% Here, we are going to label this variable "button" so that it can call
% back the other file, which was called "Untitled."
button = uicontrol(file,'Style','pushbutton','position',[230 5 150 60],'String','Plot Now!','fontsize',18,'callback',{@Untitled,options});

