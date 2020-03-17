import UIKit

// Enum - Enumeration

enum AppleProducts: String {
    case iPhone
    case iPad
    case macBook
    case watch = "Apple Watch"
}

print(AppleProducts.watch.rawValue)

enum PizzaCategory: String {
    case classic
    case specialty
    case glutenFree
}

let specialtyPizza = PizzaCategory.specialty
let myFavoritePizza: PizzaCategory = .classic

print(myFavoritePizza)

struct Pizza {
    let name: String
    let cost: Double
    let category: PizzaCategory
}

let myPizza = Pizza(name: "49-er", cost: 12.99, category: .classic)

print("I would like to order a \(myPizza.name)")

class PizzaPlace {
    var name: String
    var address: String
    private(set) var pizzas: [Pizza]
    
    // Create Initializer
    init(name: String, address: String) {
        self.name = name
        self.address = address
        self.pizzas = []
    }
    
    func add(pizza: Pizza) {
        pizzas.append(pizza)
    }
}

let johnnyPizzaPlace = PizzaPlace(name: "Johnny's Pizza", address: "123 Delicious Ave")

let hawaiianClassic = Pizza(name: "Hawaiian Classic", cost: 12.99, category: .classic)
let chickenAlfredo = Pizza(name: "Call Me Mr. Alfredo", cost: 15.99, category: .specialty)
let margarita = Pizza(name: "Margarita Seniorita", cost: 16.99, category: .glutenFree)

johnnyPizzaPlace.add(pizza: hawaiianClassic)
johnnyPizzaPlace.add(pizza: chickenAlfredo)
johnnyPizzaPlace.add(pizza: margarita)

print(johnnyPizzaPlace.pizzas)

// Differenc between Value Types and Reference Types

// Struct = Value Type

struct Ticket {
    var name: String
}

var ticket = Ticket(name: "Bob")
print(ticket.name)

var ticketCopy = ticket
ticketCopy.name = "Johnny"

print("ticket: \(ticket.name)")
print("ticketCopy: \(ticketCopy.name)")

// Reference Types: class

class City {
    var name: String
    var population: Int
    init(name: String, population: Int) {
        self.name = name
        self.population = population
    }
}

class Vaccuum {
    var isOn: Bool
    var isPluggedIn: Bool
    var rugHeight: Int
    var isSelfDriving: Bool
    var attachments : [String]
    
    init(isSelfDriving: Bool = false, attachments: [String] = []) {
        self.isOn = false
        self.isPluggedIn = false
        self.rugHeight = 5
        self.isSelfDriving = isSelfDriving
        self.attachments = attachments
    }
}

let sharkVaccuum = Vaccuum(isSelfDriving: false, attachments: ["Dusting Brush", "Crevice Tool"])

// Optionals
