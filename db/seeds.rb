
Test.destroy_all
Question.destroy_all
Option.destroy_all

js = Test.create({name: "Javascript"})

js_Q1 = js.questions.create({
    question: "Q 1 - Which of the following is a disadvantage of using JavaScript?", 
    answer: "D - All of the above.",
    explain: "All of the above options are correct."
    })
js_Q1.options.create({item: "A - Client-side JavaScript does not allow the reading or writing of files."})
js_Q1.options.create({item: "B - JavaScript can not be used for Networking applications because there is no such support available."})
js_Q1.options.create({item: "C - JavaScript doesn't have any multithreading or multiprocess capabilities."})
js_Q1.options.create({item: "D - All of the above."})

js_Q2 = js.questions.create({
    question: "Q 2 - Which built-in method returns the character at the specified index?", 
    answer: "C - charAt()",
    explain: "charAt() method returns the character at the specified index."
    })
js_Q2.options.create({item: "A - characterAt()"})
js_Q2.options.create({item: "B - getCharAt()"})
js_Q2.options.create({item: "C - charAt()"})
js_Q2.options.create({item: "D - None of the above."})

js_Q3 = js.questions.create({
    question: "Q 3 - Which of the following function of String object returns the index within the calling String object of the first occurrence of the specified value?", 
    answer: "D - indexOf()",
    explain: "charAt() method returns the character at the specified index."
    })
js_Q3.options.create({item: "A - substr()"})
js_Q3.options.create({item: "B - search()"})
js_Q3.options.create({item: "C - lastIndexOf()"})
js_Q3.options.create({item: "D - indexOf()"})

js_Q4 = js.questions.create({
    question: "Q 4 - Which of the following function of Array object creates a new array with the results of calling a provided function on every element in this array?", 
    answer: "D - map()",
    explain: "map() − Creates a new array with the results of calling a provided function on every element in this array."
    })
js_Q4.options.create({item: "A - push()"})
js_Q4.options.create({item: "B - join()"})
js_Q4.options.create({item: "C - pop()"})
js_Q4.options.create({item: "D - map()"})

js_Q5 = js.questions.create({
    question: "Q 5 - Which of the following function of Array object returns a string representing the array and its elements?", 
    answer: "D - toString()",
    explain: "toString() − Returns a string representing the array and its elements."
    })
js_Q5.options.create({item: "A - toSource()"})
js_Q5.options.create({item: "B - sort()"})
js_Q5.options.create({item: "C - splice()"})
js_Q5.options.create({item: "D - toString()"})


sql = Test.create({name: "SQL"})

sql_Q1 = sql.questions.create({
    question: "Q 1 - Which of the following is not a character manipulation function?", 
    answer: "D - coalesce",
    explain: "The COALESCE() function returns the first non-null value in a list. The CONCAT() function adds two or more strings together. The INSTR() function returns the position of the first occurrence of a string in another string."
    })
sql_Q1.options.create({item: "A - concat"})
sql_Q1.options.create({item: "B - substr"})
sql_Q1.options.create({item: "C - instr"})
sql_Q1.options.create({item: "D - coalesce"})

sql_Q2 = sql.questions.create({
    question: "Q 2 - Which of the following is true about a group function?", 
    answer: "C - Group functions ignore null values.",
    explain: "Group functions are built-in SQL functions that operate on groups of rows and return one value for the entire group. All group functions ignore NULL values."
    })
sql_Q2.options.create({item: "A - Group functions operate on sets of rows to produce multiple results per group."})
sql_Q2.options.create({item: "B - DISTINCT keyword makes a group function consider duplicate values."})
sql_Q2.options.create({item: "C - Group functions ignore null values."})
sql_Q2.options.create({item: "D - None of the above."})

sql_Q3 = sql.questions.create({
    question: "Q 3 - Which of the following is true about subqueries?", 
    answer: "D - All of the above.",
    explain: "A subquery is a SQL query nested inside a larger query. A subquery is also called an inner query, while the statement containing a subquery is also called an outer query."
    })
sql_Q3.options.create({item: "A - Subqueries could be used for Top-N analysis."})
sql_Q3.options.create({item: "B - Subqueries can be of two types – single-row subquery and multiple-row subquery."})
sql_Q3.options.create({item: "C - The outer and inner queries can get data from different tables."})
sql_Q3.options.create({item: "D - All of the above."})

sql_Q4 = sql.questions.create({
    question: "Q 4 - Which of the following is not true about multiple-row subqueries?", 
    answer: "B - Multiple row subqueries return multiple rows from the inner SELECT statement.",
    explain: "Multiple row subquery returns one or more rows to the outer SQL statement. You may use the IN, ANY, or ALL operator in outer query to handle a subquery that returns multiple rows."
    })
sql_Q4.options.create({item: "A - Multiple row subqueries return multiple rows from the outer SELECT statement."})
sql_Q4.options.create({item: "B - Multiple row subqueries return multiple rows from the inner SELECT statement."})
sql_Q4.options.create({item: "C - Multiple row subqueries use multiple-row comparison operators."})
sql_Q4.options.create({item: "D - All of the above."})

sql_Q5 = sql.questions.create({
    question: "Q 5 - Which of the following is true about deleting a table from the database?",
    answer: "D - All of the above.",
    explain: "The SQL DROP TABLE statement is used to remove a table definition and all the data, indexes, triggers, constraints and permission specifications for that table."
    })
sql_Q5.options.create({item: "A - All the data in the table are deleted"})
sql_Q5.options.create({item: "B - The table structure is removed"})
sql_Q5.options.create({item: "C - The indexes in the table are deleted"})
sql_Q5.options.create({item: "D - All of the above."})


