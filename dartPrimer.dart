void main(){

    /*
    variables
    Static so you cant 
    change the variable types
    */
    int age = 30;
    bool isNight = false;
    String name = 'chun-li';
    print(age);

    //dynamic keyword allows for 
    //changing variable types
    dynamic newName = '80';
    newName = 80;

    //function calling
    String greet = greeting();
    print(getAge());
    print(arrowFunction());

    //Lists
    //For List with one data type (good practice)
    //List<String> names = [];
    List names = ['alfonso', 'kevin', 'adan', 'homer'];
    print(names);
    //adds to the end
    names.add('alexandra');
    names.remove('alfonso');
    print(names);

    //Instantiations of class
    User newUser = User('Mario',50);
    print(newUser.username);
    newUser.login();

    SuperUser superUser = SuperUser('admin', 20);
    superUser.publish();


}

//function creation
String greeting(){
    return 'hello';
}
int getAge(){
    return 80;
}
//Arrow functions(1 liners)
String arrowFunction() => 'This is an arrow funtion';

//classes
class User{

    String username = '';
    int age = 0;

    User(String username, int age){
        this.username = username;
        this.age = age;
    }

    void login(){
        print('User logged in');
    }

}

//Inheritance
class SuperUser extends User{

    //Constructor inheritance
    SuperUser(String username, int age) : super(username, age);

    void publish(){
        print('Publish Update');
    }
}