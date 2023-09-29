import Foundation

public class Reptile: Pet {
    private let typeOfAnimal: TypeOfAnimal
    
    public enum TypeOfAnimal {
        case turtle
        case snake
        case tortoise
        case other
    }
    
    public init(typeOfAnimal: TypeOfAnimal,
                name: String,
                weight: Double,
                age: Int,
                gender: Gender){
        self.typeOfAnimal = typeOfAnimal
        super.init(name: name, weight: weight, age: age, gender: gender)
    }
    
    // to do: adicionar throw nos serviços que o réptil não possuir
    public override func getPrice(service: Services) -> Double {
        switch service{
        case .bath:
            return 80.0
        case .grooming, .ring:
            return 0.0
        case .vaccination:
            return 155.0
        case .cutClaws:
            return 60.0
        case .bloodTest:
            return 190.0
        }
    }
}
