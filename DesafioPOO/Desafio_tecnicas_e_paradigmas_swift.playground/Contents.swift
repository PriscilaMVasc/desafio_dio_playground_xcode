
import Foundation

print("Bem vindo ao PetShop! \n ")
if let pet: PetProtocol = switchAnimalType(answer: 2),
    let service = serviceAnimalType(answer: 3),
    let payment = switchPayment(answer: 3) {
    let invoice: InvoiceProtocol = Invoice(pet: pet, serviceType: service, payment: payment)

    invoice.printInvoice { (arg) in
        print(arg)
    }
 }

func serviceAnimalType(answer: Int) -> Services? {
    print("Escolha o serviço desejado:\n")
    print("(1) Banho \n(2) Tosa \n(3) Vacinação \n(4) Anilhar")
    print("(5) Cortar Garras \n(6) Exame de Sangue \n")
    
    let response = Services.init(rawValue: answer)
    return response
}

func switchAnimalType(answer: Int) -> PetProtocol?{
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

  func initializeMammal() -> PetProtocol {
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

  func initializeReptil() -> PetProtocol {
    let reptil: Reptile = .init(
        typeOfAnimal: .turtle,
        name: "Splinter",
        weight: 30.0,
        age: 20,
        gender: .female)

    return reptil
  }

   func initializeBird() -> PetProtocol {
    let bird: Bird = .init(
        featherColor: "Amarelo",
        hasWasher: true,
        name: "Canário-Belga",
        weight: 0.05,
        age: 1,
        gender: .male)

    return bird
  }






