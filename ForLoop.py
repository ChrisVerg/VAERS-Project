# Write a for/while loop to decompose and append data. 

# First combine the VAX and the DATA files 
# something like for columns in x 
# if colum matches columns to keep then keep/append
    # if not, dont keep. 

#Then year_name_completion status of file
# if the completion status is true append the the file to accumulate
# the data into a single file. 

######      datasets = [list of dataset locations]


import pandas as pd

vax_columns = ['VAERS_ID', 'VAX_TYPE', 'VAX_MANU', 'VAX_LOT', 'VAX_NAME']
data_columns = ['VAERS_ID', 'AGE_YRS', 'STATE', 'SYMPTOM_TEXT', 'DIED', 'ER_VISIT']
columns = vax_columns, data_columns


# import list of files
VAERS_MESSY

for column in columns:
     if df_column == columns:
        name +1 = pd.merge( on= ID )
        name +1 ['Year'] = year
        collective_df concat(name +1)
    




test = pd.read_csv('C:/Users/chris/Desktop/DS_104/Lesson1/bikes.csv')

dataframe = test

###### try another structure

for columns in dataframe:
        if coulumn = list_name:
             inser column with year





menu_text = """
====================
1. List the tasks
2. Add a task
3. Remove a task
4. Mark task complete
5. Quit

What would you like to do? """

program_is_running = True

while program_is_running:
    decision = input(menu_text)
    if decision == '1':
        list_tasks()

    elif decision == '2':
        add_task()

    elif decision == '3':
        remove_task()

    elif decision == '4':
        update_task()

    # Add elif statements for inputs 2, 3, and 4

    elif decision == '5':
        program_is_running = False
    else:
        print('please choose a valid option')