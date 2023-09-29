import Foundation

public class Bird: Pet {
 private let featherColor: String
 private let hasWasher: Bool

   public init(featherColor: String,
        hasWasher: Bool,
        name: String,
        weight: Double,
        age: Int,
        gender: Gender){
     self.featherColor = featherColor
     self.hasWasher = hasWasher
     super.init(name: name, weight: weight, age: age, gender: gender)
   }
  // to do: adicionar throw nos serviços que o pássaro não possuir
  public override func getPrice(service: Services) -> Double {
    switch service{
      case .bath, .grooming, .vaccination:
      return 0.0
      case .ring:
      return 100.0
      case .cutClaws:
      return 60.0
      case .bloodTest:
      return 190.0
    }
  }
}
