## Functions

 1) Every program has a main function, which is the entry point of the program. 
 2) The main function is where the execution of the program begins. 
 3) In this example, we define a main function that prints "Hello, World!" to the console.

```v
fn main(){
	println("Hello, World!")
}
```

## Variables

 1) In V, variables are declared using the `:=` operator. 
 2) The type of the variable is inferred from the value assigned to it. 
 3) In this example, we declare a variable called `name` and assign it the value "Alice".

```v
fn main(){
	name := "Alice" // declare a variable called name and assign it the value "Alice". 
	println("Hello, $name!")
}
```