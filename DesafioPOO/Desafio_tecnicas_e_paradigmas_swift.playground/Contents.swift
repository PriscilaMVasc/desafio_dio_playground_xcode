//import UIKit
//
import Foundation

print("Bem vindo ao PetShop! \n ")
if let pet = switchAnimalType(answer: 2),
    let service = serviceAnimalType(answer: 3),
    let payment = switchPayment(answer: 3) {
  let invoice = Invoice(pet: pet, serviceType: service, payment: payment)
    invoice.printInvoice()
 }

func serviceAnimalType(answer: Int) -> Services? {
    print("Escolha o serviço desejado:\n")
    print("(1) Banho \n(2) Tosa \n(3) Vacinação \n(4) Anilhar")
    print("(5) Cortar Garras \n(6) Exame de Sangue \n")
    
    let response = Services.init(rawValue: answer)
    return response
}

func switchAnimalType(answer: Int) -> Pet?{
    print("Qual tipo do seu animal? \n (1) Mamífero \n (2) Réptil \n (3) Pássaro \n")
    switch answer{
    case 1:
        return initializeMammal()
    case 2:
        return initializeReptil()
    case 3:
        return initializeBird()
    default:
        return nil
    }

}

func switchPayment(answer: Int) -> Payment? {
    print("Qual a forma de pagamento?\n")
    print("(1) Crédito \n(2) Débito \n(3) Pix \n")
    
    let response = Payment(rawValue: answer)
    return response
}

  func initializeMammal() -> Mammal {
    let mammal: Mammal = .init(
      furColor: "Caramelo",
       castrated: true,
       typeOfAnimal: .dog,
       name: "Segovinha",
       weight: 3.5,
        age: 1,
       gender: .male)

    return mammal
  }

  func initializeReptil() -> Reptile {
    let reptil: Reptile = .init(
        typeOfAnimal: .turtle,
        name: "Splinter",
        weight: 30.0,
        age: 20,
        gender: .female)

    return reptil
  }

   func initializeBird() -> Bird {
    let bird: Bird = .init(
        featherColor: "Amarelo",
        hasWasher: true,
        name: "Canário-Belga",
        weight: 0.05,
        age: 1,
        gender: .male)

    return bird
  }


//
//func main(){


//
//
//
//
//

//
//
//}
//
//main()
//
//enum Services: Int{
//  case bath = 1
//  case grooming = 2
//  case vaccination = 3
//  case ring = 4
//  case cutClaws = 5
//  case bloodTest = 6
//
//  var serviceName: String {
//    switch self {
//      case .bath:
//      return "Banho"
//      case .grooming:
//      return "Banho e Tosa"
//      case .vaccination:
//      return "Vacinação"
//      case .ring:
//      return "Anilhar"
//      case .cutClaws:
//      return "Cortar Garras"
//      case .bloodTest:
//      return "Exame de Sangue"
//    }
//  }
//}
//
//enum Payment: Int{
//  case debit = 1
//  case credit = 2
//  case pix = 3
//
//  func nameOfPayment() -> String{
//    switch self{
//      case .debit:
//      return "Cartão Débito"
//      case .credit:
//      return "Cartão Crédito"
//      case .pix:
//      return "Pagamento em Pix"
//    }
//
//  }
//}
//
//class Invoice{
//  let pet: Pet
//  let serviceType: Services
//  let payment: Payment
//
//  init(pet: Pet, serviceType: Services, payment: Payment){
//    self.pet = pet
//    self.serviceType = serviceType
//    self.payment = payment
//  }
//
//  func printInvoice(){
//    let animalName = pet.name
//    let serviceValue = pet.getPrice(service: serviceType)
//    let serviceName = serviceType.serviceName
//    let finalPayment = payment.nameOfPayment()
//    print("Nota Fiscal \n O serviço \(serviceName), foi escolhido para o \(animalName), no valor de R$\(serviceValue) \n Forma de Pagamento:\(finalPayment) ")
//  }
//}
//
//class Pet {
//  let name: String
// private let weight: Double
// private let age: Int
// private let gender: Gender
//
//  enum Gender {
//    case female
//    case male
//  }
//
//  init(name: String, weight: Double, age: Int, gender: Gender) {
//    self.name = name
//    self.weight = weight
//    self.age = age
//    self.gender = gender
//  }
//  func getPrice(service: Services) -> Double {
//    return 50.0
//  }
//}
//
//class Mammal: Pet {
// private let furColor: String
// private let castrated: Bool
// private let typeOfAnimal: TypeOfAnimal
//
//  enum TypeOfAnimal {
//    case cat
//    case dog
//    case mouse
//    case other
//  }
//
//  init(furColor: String,
//       castrated: Bool,
//       typeOfAnimal: TypeOfAnimal,
//       name: String,
//       weight: Double,
//        age: Int,
//       gender: Gender) {
//    self.furColor = furColor
//    self.castrated = castrated
//    self.typeOfAnimal = typeOfAnimal
//    super.init(name: name, weight: weight, age: age, gender: gender)
//  }
//
//  // to do: adicionar throw nos serviços que o mamífero não possuir
//  override func getPrice(service: Services) -> Double {
//    switch service{
//      case .bath:
//      return 64.90
//      case .grooming:
//      return 125.0
//      case .vaccination:
//      return 130.0
//      case .ring:
//      return 0.0
//      case .cutClaws:
//      return 40.90
//      case .bloodTest:
//      return 165.90
//     }
//  }
//}
//
//class Bird: Pet {
// private let featherColor: String
// private let hasWasher: Bool
//
//   init(featherColor: String,
//        hasWasher: Bool,
//        name: String,
//        weight: Double,
//        age: Int,
//        gender: Gender){
//     self.featherColor = featherColor
//     self.hasWasher = hasWasher
//     super.init(name: name, weight: weight, age: age, gender: gender)
//   }
//  // to do: adicionar throw nos serviços que o pássaro não possuir
//  override func getPrice(service: Services) -> Double {
//    switch service{
//      case .bath, .grooming, .vaccination:
//      return 0.0
//      case .ring:
//      return 100.0
//      case .cutClaws:
//      return 60.0
//      case .bloodTest:
//      return 190.0
//    }
//  }
//}
//
//class Reptile: Pet {
// private let typeOfAnimal: TypeOfAnimal
//
//  enum TypeOfAnimal {
//    case turtle
//    case snake
//    case tortoise
//    case other
//  }
//
//  init(typeOfAnimal: TypeOfAnimal,
//        name: String,
//        weight: Double,
//        age: Int,
//        gender: Gender){
//     self.typeOfAnimal = typeOfAnimal
//     super.init(name: name, weight: weight, age: age, gender: gender)
//   }
//
//  // to do: adicionar throw nos serviços que o réptil não possuir
//  override func getPrice(service: Services) -> Double {
//    switch service{
//      case .bath:
//      return 80.0
//      case .grooming, .ring:
//      return 0.0
//      case .vaccination:
//      return 155.0
//      case .cutClaws:
//      return 60.0
//      case .bloodTest:
//      return 190.0
//    }
//  }
//}
//
//
//let cat = Mammal(furColor: "Black",
//                 castrated: true,
//                  typeOfAnimal: .dog,
//                  name: "Tom",
//                  weight: 3.5,
//                  age: 2,
//                  gender: .male)
//
//
//
//
