import Foundation

public class Mammal: Pet {
 private let furColor: String
 private let castrated: Bool
 private let typeOfAnimal: TypeOfAnimal

  public enum TypeOfAnimal {
    case cat
    case dog
    case mouse
    case other
  }

   public init(furColor: String,
       castrated: Bool,
       typeOfAnimal: TypeOfAnimal,
       name: String,
       weight: Double,
        age: Int,
       gender: Gender) {
    self.furColor = furColor
    self.castrated = castrated
    self.typeOfAnimal = typeOfAnimal
    super.init(name: name, weight: weight, age: age, gender: gender)
  }

  // to do: adicionar throw nos serviços que o mamífero não possuir
  override func getPrice(service: Services) -> Double {
    switch service{
      case .bath:
      return 64.90
      case .grooming:
      return 125.0
      case .vaccination:
      return 130.0
      case .ring:
      return 0.0
      case .cutClaws:
      return 40.90
      case .bloodTest:
      return 165.90
     }
  }
}
