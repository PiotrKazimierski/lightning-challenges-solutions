/**
 * Challenge: Create a Simple Person Class
 */
public class Person {
    
    // Properties for name and age
    public String name;
    public Integer age;
    
    /**
     * Constructor to initialize the Person with a name and age
     */
    public Person(String name, Integer age) {
        this.name = name;
        this.age = age;
    }
    
    /**
     * Returns a greeting message including the person's name and age
     */
    public String greet() {
        return String.format('Hello, my name is {0} and I am {1} years old.', new List<String>{
            this.name, 
            String.valueOf(this.age)
        });
    }
}
