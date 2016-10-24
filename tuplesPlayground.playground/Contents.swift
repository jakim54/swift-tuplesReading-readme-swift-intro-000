//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Tuple Time!

/*func downloadImage(atUrl url: String) -> Bool {
    // todo: downloads an image from the URL.
    return true
}

func downloadImage() -> Bool {
    /*
     TODO:
     - download the image
     - if no error, return true
     - otherwise, get error string and return false
     */
    return false
}

// Need to return two things when it fails, a Bool and a message
func downloadImage(atURL url: String) -> Bool {
    var errorNumber = "404"
    let error = "\(errorNumber) Error Downloading Image"
    return error
}*/

// Simple example of Tuples in Swift 3
let p1: (Int, Int) = (1, 2)
print(p1)

let x: (Bool, String) = (false, "Image no longer exists at the specified URL")
let y: (String, String) = ("", "")
print(y)
var z = (1, 2, 3)
var implicitTuple = z.0 // prints 1
//z.0 = "Changed from 1 to this" //throws error because the implicitly typed "Int" cannot be changed to string.
z.0 = 10
print(implicitTuple)
print(z.0) // printed 10, which is the changed value.

// Tuple can be mixed, all implicitly as well.
var xyz = ("Yo", true, 0)
print(xyz)

func downloadImage(atURL url: String) -> (Bool, String) {
    let error = "Image no longer exists"
    return (false, error)
}

// pattern matched
let triple = (1, 2, 3)
let (a, b, c) = triple
print(a)
print(b)
print(c)
print(triple)

let externalVariable = ("externalOne", "externalTwo", "externalThree")
let (_, middle, _) = externalVariable
print(externalVariable)

let fishes = ("cod", "dab", "eel")
var oneFish = ""
var twoFish = ""
var threeFish = ""

//(oneFish, _, _) = fishes
//print(fishes)
//the external arguments work, but they are undefined. Can they be defined later? What is the method to seeing all the tuple's attachments?

(oneFish, twoFish, threeFish) = fishes
print(oneFish)
print(twoFish)
print(threeFish)
print(fishes)

// Decent way of using constants/immutables?
// Default menu, settings etc, and then initialize a separate var that takes in the user preferences and sets the value to them. Is this how settings/preferences work?
// Ask Akil/Isaac and check the repo.
let theHerd = ("Kevin", "Pete", "Ruxin")
var mutableFrittatas = theHerd
mutableFrittatas.1 = "Taco"
mutableFrittatas.0 = "Andre"
print(theHerd)
print(mutableFrittatas)

// Naming Tuples like Hashes in Ruby
var thePack = (first: "Wolf", second: "Lion", third: "Gazelle")
let thePacksFirst = thePack.first
print(thePacksFirst) // prints wolf
thePack.first = "Dog"
print(thePack.first) // prints dog
print(thePacksFirst) // still prints wolf

// did not get a compiler error. Perhaps Swift 3 fixed/updated this?
let namedFishes: (String, String, String) = (first: "Is", second: "This", third: "Working?")
print(namedFishes)
print(namedFishes.0)

// Creating and Accessing Tuples
//==========================
// Constructing a simple tuple
let tp1 = (2, 3)
let tp2 = (2, 3, 4)

// Constructing a named tuple
let tp3 = (x: 5, y: 3)

// Different types
let tp4 = (name: "Carl", age: 78, pets: ["Bonny", "Houdon", "Miki"])

// Accessing tuple elements
let tp5 = (13, 21)
tp5.0 // equals 13
tp5.1 // equals 21


// Tuples for Pattern Matching
//=======================
// Contrived example, these would be return values from various functions
let age = 23
let job: String? = "Operator"
let payload: AnyObject = NSDictionary()

switch (age, job, payload) {
case (let age, _?, _ as NSDictionary) where age < 30:
    print(age)
//    print(job)
//    print(payload)
default: ()
}

// Tuples as return types
func def() -> (Int, Int, String) {
    return (3, 5, "Carl")
}

// Tuple Destructuring
//================
let (d, e, f) = def()
print(d)
print(e)
print(f)

// getting several function calls into one line
//let (qa, ws, ed) = (qa(), ws(), ed())

// switched values
var qa = 5
var ws = 4
(qa, ws) = (ws, qa)
print(ws) // prints 5
print(qa) // prints 4


// Tuples as anonymous structs
// Struct is made from a struct description and a struct instance
struct UsersInfo {
    let name: String
    let age: Int
}

// vs. // Tuples as well as structs both allow you to combine different types into one type:

let userGuy = (name: "Carl", age: 40)
// Tuples exists only as an instance

// From the docs: Tuples are useful for temporary groups of related values. If you data structure is likely to persist beyond a temporary scope, model it as a class or structure
func zipForUser(userid: String) -> String { return "12124" }
func streetForUser(userid: String) -> String { return "Charles Street" }

// Find all unique street in our userbase
// An array constituted via Tuples
var streets: [String: (zip: String, street: String, count: Int)] = [:]

/*for userid in users {
    let zip = zipForUser(userid)
    let street = streetForUser(userid)
    let key = "\(zip)-\(street)"
    if let (_, _, count) = streets[key] {
        streets[key] = (zip, street, count + 1)
    } else {
        streets[key] = (zip, street, 1)
    }
}*/
// returns a does not conform to protocol "Sequence" for userid in user
// drawStreetsOnMap(streets.values)



