
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



