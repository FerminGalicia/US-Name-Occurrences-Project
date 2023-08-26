# In this program, we will analyze the given data to feed a graphical user interface.

# In this first step, this code will ask the user for their desired name and a specified sex.
I = input('What name are you interested in? ')
O =input('For what sex M or F? ')
print('Searching Database...')

# Here, these codes will be represented as the values of occurrences, sum of names, popularity and by the years.
occurrences = []
totalname = []
popularity = []
years=[]

# This code will create a list that will make the given values to become a float.
# Also, the variables "increment" will total the values in the loop.
pick=0
increment1 = 0
Increment1 = 0
increment2 = float(0)
Increment2 = float(0)
increment3 = 0
Increment3 = float(0)
Increment4 = 0

# This code is represented to be a loop that goes through all the data year files between 1880 and 2018.
# Furthermore, the variable "F" will let the code to open and read the year files.
for i in range(1880,2018):
    for year in range(i,i+1):
        increment=0
        readFile = 'yob'+str(year)+'.txt'
        F = open(readFile,'r')

# Here, this loop will eventually split the file data into a series of columns.
        for row_num,line in enumerate(F):
            figures = line.strip().split(',')
            figure = []

# Here, we see that the variable "figure" is utilized to add a third column in order to determine the births per year.
            for u in figures:
                figure.append(u)
            increment = increment+int(figures[2])

# Next, this code will set the following variables into a second column.
# Thus, the variable becomes an integer to function properly.
            if I == figure[0] and O == figure[1]:
                n = int(figure[2])
                num=int(figure[2])
                pick = n

# This code will append the increment so that it can benefit the loop and divide it to the variable "pick."
        totalname.append(increment)
        c=pick/increment

# This code will save the given year and occurrence value to the working list.
# This will only happen if the code detects an occurrence of the name in a specified year.
        if pick>1:
            occurrences.append(pick)
            increment1=increment1+num
            p=(pick/increment)
            p=f'{p:.15f}'

# Again, we see the same append function but for the popularity and years.
            popularity.append(p)
            y=(year)
            years.append(y)
            increment2=increment2+c
            increment3=increment3+y
            print(y,pick,p)
           
# Here, we see the variables "I" and "O" to be the inputs of the given questions.
        if I== figure[0] and O== figure[1]:
                Num = int(figure[2])
                Num1=float(figure[2])
                increment1 = increment1+Num
                increment2=increment2+c

# The variable "strips" determines how many lines there will be in order to depict the number of years.
strips = len(years)
a1=increment3

# Here, we see that the variables that end with "avg" and "pop" are represented to be the average and popularity.
# Thus, we are solving for A and B.
Aavg=increment3/strips
Bpop1=increment2
Bpavg=Bpop1/strips
Boc1=increment1
Bocavg=Boc1/strips

# In this particular code, we almost see the same method.
for i in range(1880,2018):
    for year in range(i,i+1):
        increment=0
# The variable "F" will open and read the text files between 1880 and 2017.
        readFile = 'yob'+str(year)+'.txt'
        F = open(readFile,'r')

# As done before, this loop will split the file data into separate columns.
        for row_num,line in enumerate(F):
            figures = line.strip().split(',')
            figure = []

# For this loop, it will simply add up the third column in order to determine the births per year.
            for u in figures:
                figure.append(u)
            increment = increment+int(figures[2])

# Here, this code implements the values of "I" and "O" to become integers.
            if I == figure[0] and O == figure[1]:
                n = int(figure[2])
                num=int(figure[2])
                pick = n

# This code will append the increment to utilize the output function for the loop.
        totalname.append(increment)
        c=pick/increment

# As depicted above, we implement the linear slope formula and y-intercept and make it into separate variables.
        if pick>1:
            P=pick/increment
            y=year
            R=(y-Aavg)
            L=(n-Bocavg)
            L1=c-Bpavg
# The variable "Top" will represent the numerator and the variable "Bottom" will become the opposite.
            Top=R*L
            Increment2=Increment2+Top
            Top1=R*L1
            Increment4=Increment4+Top1
            Bottom=R**2
            Increment3=Increment3+Bottom

# This code has multiple variables that represent the value of the slope and y-intercept.
# Moreover, these codes represent the sum divided by the total where the given years become into strings.
Koc=Increment2/Increment3
Ko = str(Koc)
Boc=Bocavg-Koc*Aavg
Bo=str(Boc)
Kpop=(Increment4/Increment3)
KP=str(Kpop)
Bpop=Bpavg-Kpop*Aavg
BP=str(Bpop)

# Finally, we print the calculated slopes and the y-intercepts.
print(Koc)
print(Boc)
print(Kpop)
print(Bpop)

F.close()

# Here, we use a function that can make the code much cleaner and more readable.
# Thus, this code will open and write the text-file data based on the occurrences.
with open('occurrences.txt ','w') as f:
    for item in occurrences:
        f.write("%s\n" % item)   
f.close()

# Here, we see the same process but with opening the data on the popularity text file.
with open('popularity.txt ','w') as q:
    for item in popularity:
        q.write("%s\n" % item)
q.close()

# Again, we open the data based on the years text file.
with open('years.txt ','w') as h:
    for item in years:
        h.write("%s\n" % item)   
h.close()

# We begin to slowly close the program by opening the data again.
s = open('popint.txt','w')
s.write(BP)
s.close()


d = open('slopeocc.txt','w')
d.write(Ko)
d.close()


l = open('slopepop.txt','w')
l.write(KP)
l.close()


t = open('occint.txt','w')
t.write(Bo)
t.close()

# Finally, we print the results by displaying a direction to run Matlab.
print('Go Run Matlab!')

