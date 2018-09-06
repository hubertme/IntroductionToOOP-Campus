import UIKit

class Dog{
    let name: String?
    var age: Int
    let breed: String
    
    init(name: String?, age: Int, breed: String) {
        self.name = name
        self.age = age
        self.breed = breed
    }
    
    func haveBirthday() -> Void {
        print("A dog is having birthday!")
        self.age+=1
    }
}

class GuardDog: Dog{
    let houseName: String
    let hasBeenAdoptedFor: Int
    
    init (name: String?, houseName: String, age: Int, breed: String, durationAdopted: Int){
        self.hasBeenAdoptedFor = durationAdopted
        self.houseName = houseName
        super.init(name: name, age: age, breed: breed)
    }
    
    override func haveBirthday() {
        super.haveBirthday()
        print("Happy birthday, \(self.houseName)!\n")
    }
    
}

let tony = GuardDog(name: "Berry", houseName: "Tony", age: 5, breed: "German Sheperd", durationAdopted: 1)

print(tony.name, tony.houseName, tony.age, tony.breed, tony.hasBeenAdoptedFor)
tony.haveBirthday()
print(tony.name, tony.houseName, tony.age, tony.breed, tony.hasBeenAdoptedFor)
