
/*
## Functions
 Every program has a main function, which is the entry point of the program. The main function is where the execution of the program begins. In this example, we define a main function that prints "Hello, World!" to the console.
*/

fn main(){
	println("Hello, World!")
	print_name() // call the printName function to print the name.
	print_name_with_type() // call the printNameWithType function to print the name with explicit type.
	print_data_types() // call the printDataTypes function to print the data types.
	print_mutable_variable() // call the printMutableVariable function to print the mutable variable.
	greet("Alice") // call the greet function with the argument "Alice".
	greet_multiple("Bob", 25) // call the greet_multiple function with the arguments "Bob" and 25.
	add(5, 10) // call the add function with the arguments 5 and 10.
	x, y := swap(5, 10) // call the swap function with the arguments 5 and 10 and assign the returned values to x and y.
	println("Swapped values: x = ${x}, y = ${y}") // print the swapped values to the console
	print_array() // call the print_array function to print the array.
}


/*
## Variables

 1) In V, variables are declared and initialized using the `:=` operator. 
 2) The type of the variable is inferred from the value assigned to it. 
 3) In this example, we declare a variable called `name` and assign it the value "Alice". 
*/

fn print_name(){
	name := "Alice" // declare and initialize a variable called name and assign it the value "Alice". variable name is inferred to be of type string.
	println("Hello, ${name}!")
}

/*
 ## Varibles with explicit types

 */

 fn print_name_with_type(){
 	name := string("Alice") // declare a variable called name and assign it the value "Alice"
	println("Hello, ${name}!")
 }

 /* 
 ## Data types

 1) In V, there are several built-in data types, including integers, floats, booleans, and strings.
 2) In this example, we declare a variable called `age` and assign it the value 30. The type of the variable is inferred to be an integer.
 */	

 fn print_data_types(){
		age := int(30) // declare a variable called age and assign it the value 30.
	num1 := i8(10)  //8 bit integer
	num2 := i16(20)  // 16 bit integer
	num3 := i32(30)  // 32 bit integer
	num4 := i64(40)  // 64 bit integer
	num5 := u8(50) // unsigned 8 bit integer
	num6 := u16(60) // unsigned 16 bit integer
	num7 := u32(70) // unsigned 32 bit integer
	num8 := u64(80) // unsigned 64 bit integer
	num9 := f32(90.0) // 32 bit floating point number
	num10 := f64(100.0) // 64 bit floating point number
	is_true := bool(true) // boolean type. Value can be either true or false.
	is_false := bool(false) 
	println("Age: ${age}, num1: ${num1}, num2: ${num2}, num3: ${num3}, num4: ${num4}, num5: ${num5}, num6: ${num6}, num7: ${num7}, num8: ${num8}, num9: ${num9}, num10: ${num10}, is_true: ${is_true}, is_false: ${is_false}")
 }	

/*
## Mutable variables
Variables are immutable by default in V. To declare a mutable variable, you can use the `mut` keyword.

*/

 fn print_mutable_variable(){
 	mut mutable_name := "Bob" // declare a mutable variable
	mutable_name = "Charlie" // change the value of the mutable variable
	println("Hello, ${mutable_name}!") // print the value of the mutable variable

 }

 /*
## Constants

 1) In V, constants are declared using the `const` keyword. 
 2) Constants are immutable and cannot be changed after they are declared. 
 3) They cannot be declared inside the functions. They have to be declared outside the functions at the beginning of the file/module.

 ```v
 	const PI = 3.14 // declare a constant called PI and assign it the value 3.14.
	const MAX_VALUE = 100 // declare a constant called MAX_VALUE and assign it the value 100.
	println("PI: ${PI}, MAX_VALUE: ${MAX_VALUE}")
```

*/



/*
## Function with parameters

 1) In V, functions can take parameters, which are values that are passed to the function when it is called. 
 2) In this example, we define a function called `greet` that takes a parameter called `name` and prints a greeting to the console.
*/

fn greet(name string){
	println("Hello, ${name}!")
}	

/* 

## Function with multiple parameters

*/

fn greet_multiple(name string, age int){
	println("Hello, ${name}! You are ${age} years old.")
}

/*
## Function with return value

 1) In V, functions can return values, which are values that are returned to the caller when the function is called. 
 2) In this example, we define a function called `add` that takes two parameters called `a` and `b`, adds them together, and returns the result.
 3) Call the function as `result := add(5, 10)` to get the result of adding 5 and 10.
*/

fn add(a int, b int) int{
	return a + b
}

/*
## Function with multiple return values

 1) In V, functions can return multiple values, which are values that are returned to the caller when the function is called. 
 2) In this example, we define a function called `swap` that takes two parameters called `a` and `b`, swaps their values, and returns the swapped values.
 3) Call the function as `x, y := swap(5, 10)` to get the swapped values as 10 and 5.
*/

fn swap(a int, b int) (int, int){
	return b, a
}


/*
## Arrays

 1) In V, arrays are used to store multiple values of the same type. 
 2) In this example, we declare an array called `numbers` and assign it the values [1, 2, 3, 4, 5]. 
*/

fn print_array(){
	numbers := [1, 2, 3, 4, 5] // declare an array called numbers and assign it the values [1, 2, 3, 4, 5].
	mut names := ["Arun","Tom"] // mutable array called names and assign it the values ["Arun","Tom"].
	names << "Jerry" // Append the value "Jerry" to the names array.
	names[0] = "John" // Change the value of the first element of the names array to "John". Array indexing starts from 0, so names[0] refers to the first element of the array.

    mut fruits :=["Apple", "Banana", "Orange"] // mutable array called fruits and assign it the values ["Apple", "Banana", "Orange"].
	fruits[0]= "Mango" // Change the value of the first element of the fruits array to "Mango".

    // Declare an array called large_array of int type with a length of 50 and a capacity of 50. The array is initialized with all elements set to 0.
	large_array:=[]int{len: 50,cap: 100, init: 0} 

	// Similary you can create an array of strings with a capacity of 20.
     mut vegetables := []string{ cap: 20} 
	 vegetables << "Carrot" // Append the value "Carrot" to the vegetables array.
	 vegetables << "Broccoli" // Append the value "Broccoli" to the vegetables array


	println("Numbers: ${numbers}") // print the values of the array to the console.
	println("Names: ${names}") // print the values of the names array to the console.
	println("Fruits: ${fruits}") // print the values of the fruits array to the console.
	println("Large array: ${large_array}") // print the values of the large_array to the console.
	println("Vegetables: ${vegetables}") // print the values of the vegetables array to the console.

    // length and capacity of the arrays. Use `.len` to get the length of the array and `.cap` to get the capacity of the array.
	println("Length of numbers array: ${numbers.len}") // print the length of the numbers array to the console.
	println("Capacity of numbers array: ${numbers.cap}") // print the capacity of the numbers array to the console.

}





    



 