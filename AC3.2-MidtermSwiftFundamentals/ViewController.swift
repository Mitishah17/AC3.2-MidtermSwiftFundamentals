//
//  ViewController.swift
//  AC3.2-MidtermSwiftFundamentals
//
//  Created by Jason Gresh on 12/6/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

enum Ship: String {
    case battle
    case friend
}

class ViewController: UIViewController {
    let someInts = [32, 11, 75, 42]
    let mixedVerbs = ["canoeing", "hiking", "be", "camping", "drive", "drink", "shampooing"]
    let numb3rs = ["one", "2", "3hree", "4", "deed", "feed"]

    let someCapitals = ["Alabama" : "Montgomery",
                        "Alaska" : "Juneau",
                        "Arizona" : "Phoenix",
                        "Arkansas" : "Little Rock",
                        "California" : "Sacramento",
                        "Colorado" : "Denver"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // General Instructions
        // Most problems are defined in terms of a function with a return.
        // For each, define the function and call it, capture its return and call
        // print() after the existing marker. Keep all those markers in place.
        // They help you and me.
        
        // Q. 1
        // Write a function that sums an input array of Int and returns an Int.
        // Use the property someInts as input.
        //
        // E.C. Solve using a higher order function.
        
        print("A. 1")
        q1Answer(arr: someInts)
        print("---------")
        
        // Q. 2
        // You're back in 3rd grade. What's the capital of Arkansas?
        // Print the answer using the someCapitals dictionary.
        print("\nA. 2")
        for (key, value) in someCapitals{
            if key == "Arkansas"{
                print(value)
            }
        }

        print("---------")
        
        // Q. 3
        // You're in Denver for legal recreational reasons and have subsequently
        // forgotten what state you're in. Use the someCapitals dictionary
        // to find out and print the state.
        print("\nA. 3")
        for (key, value) in someCapitals{
            if value == "Denver"{
                print(key)
            }
        }

        print("---------")
        
        // Q. 4
        // Write a function that takes no arguments and returns
        // the String, "Hi, friend, let's do battle" using the
        // Ship enum.
        print("\nA. 4")
        print(q4Answer())
        print("---------")

        // Q. 5
        // Write a function that takes an instance of Ship as its parameter
        // and returns "SAFE" if it's .friend, or "DANGER" if it's .battle.
        // Test and print both cases
        print("\nA. 5 test 1")
        q5nswer(instance: .battle)
        
        print("\nA. 5 test 2")
        q5nswer(instance: .friend)
        print("---------")

        // Q. 6
        // The year is 2018. You've been called on to decipher a list of inputs that 
        // are suspected to represent numbers. Apple, in an effort to do its part in
        // keeping jobs in America has removed the map function from the library.
        // Write a simple clone of the map function. It should take as its two
        // parameters an array of String and a closure of type (String)->Int?
        // Call your function with a suitable closure to interpret the elements
        // from property numb3rs. You should have two results.
        //
        // E.C. Make a second call to your function with a new closure that 
        // returns more numbers. I was able to get 4 Ints.
        
        print("\nA. 6")
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 7
        // You got a job translating loan words from English into French. For some unknown reason
        // the French are really fixated on -ing endings when doing this. Take a list of mixed verbs
        // and filter them so only those in the -ing form remain. Use the mixedVerbs property as input.
        // Output: ["canoeing", "hiking", "camping", "shampooing"]
        print("\nA. 7")
        var newArr = mixedVerbs.filter{$0.contains("ing")}
        
        print(newArr)
        print("---------")
        
        // Q. 8a
        // Create a class C4QStudent with the following properties:
        //   
        //   let name: String
        //   let id: Int
        //   var favoriteLunch: String
        // 
        // Create an init method that sets all three properties from parameters passed in.
        
        // Q. 8b
        // 
        //  Make an instance of C4QStudent from each line of data below (5 total), and put them in
        //  an array. dump() the array.
        // 
        //    Jermaine, 83, Millie's
        //    Kadell, 23, Vernon Blvd. Chinese
        //    Miti, 77, Subway
        //    Sabrina, 68, Vernon Blvd. Pizza
        //    Marcel, 39, Court Sq. Diner
        //
        
        print("\nA. 8b")
        class C4QStudent {
            let name: String
            let id: Int
            var favoriteLunch: String
            
            init(name: String, id: Int, favoriteLunch: String) {
                self.favoriteLunch = favoriteLunch
                self.id = id
                self.name = name
            }
        }

        print("---------")

        // Q. 8c
        // Create a new array by sorting by name. dump() it.
        print("\nA. 8c")
        // replace this comment with your answer
        print("---------")
        
        // Q. 8d
        // Create a new array by sorting by id. dump() it.
        print("\nA. 8d")
        // replace this comment with your answer
        print("---------")

        // Q. 8e
        // Change everybody's favorite lunch spot to "Tamashii Ramen". dump() the arrays.
        //
        // E.C. Solve using a higher order function.
        print("\nA. 8e")
        // replace this comment with your answer
        // if you do the extra credit, keep it above the line
        print("---------")
        
        // Q. 9
        // You may have noticed, or you can test now, that if you update the elements of 
        // one array, all arrays show the updated value. Why is that?
        // Print the answer here
        print("Because C4QStudents is a class which is a reference type which means that when you create an instance of that class and change something, it refers back to the original and changes it.")
        
        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("---------")
        
        // Q. 10.
        // How would it differ if C4QStudent was a struct?
        // Print the answer here
        print("Since struct is a value type when you create an instance for it you make a copy of the original and you only update the copy. The original is still unchanged")

        // print(
        //     "You can append lines like this if you " +
        //     "want to be verbose."
        // )
        print("---------")
        
    }
    
    
    func q1Answer(arr: [Int]) -> Int {
        var sum = 0
        for num in arr {
            sum += num
        }
        return sum
    }
    
    func q4Answer() -> String {
        let string = "Hi, \(Ship.friend), let's do \(Ship.battle)"
        return string
    }

    func q5nswer(instance: Ship) -> String {
        if instance == .battle {
            return "DANGER"
        } else {
            return "SAFE"
        }
    }
}


