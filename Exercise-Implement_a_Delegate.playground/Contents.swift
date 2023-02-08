protocol Driver {
    var name: String { get }
    func driveToDestination(_ destination: String, with food: String)
}
class DeliveryDriver: Driver {
    let name: String
    init(name: String) {
        self.name = name
    }
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver \(food).")
    }
}


class LittleLemon {
//Create a variable property deliveryDriver of type Optional
    var deliveryDriver:Driver?

    //Create a method deliverFood with food parameter with an omitted argument label and a destination parameter with a --to-- argument label
    func deliverFood(_ food:String,to destination:String){

        //Inside the deliverFood method, use an if let statement to safely unwrap deliveryDriver and assign the successfully unwrapped value to the deliveryDriver constant.
       if let deliveryDriver=deliveryDriver{

           //Inside the if let statement, call the driveToDestination method on deliveryDriver while passing destination and food to the method.
            deliveryDriver.driveToDestination(
                destination,
                with:food)
        }
            //Chain the if let statement with an else statement. Inside the else statement, print: “No delivery driver.”
        else{
            print("No delivery driver")
        }
       
    }
}

//Instantiate a DeliveryDriver and pass “Bob” in the name parameter and assign the class instance to a constant called bob.
let bob = DeliveryDriver(name: "Bob")

//Instantiate a LittleLemon class instance and assign it to a littleLemon constant.
let littlelemon = LittleLemon()

//Call the deliveryFood method on littleLemon. Pass "Super Spaghetti" for the food parameter. Pass "1 Spaghetti Lane" for the lane parameter.
littlelemon.deliverFood(
    "Super Spaghetti",
    to: "1 Spaguetti Lane"
)
//Console should print "No delivery driver"

//Assign Bob as the  DeliveryDriver for littleLemon
littlelemon.deliveryDriver=bob

//Assign a delivery driver to little lemon
littlelemon.deliverFood(
    "Super Spaguetti",
    to: "1 Spaguetti Lane"
)
//Console should print: "Bob is driving to 1 Spaguetti Lane to deliver Super Spaguetti."
