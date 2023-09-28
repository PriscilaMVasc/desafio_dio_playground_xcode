import Foundation

public class Invoice{
  let pet: Pet
  let serviceType: Services
  let payment: Payment

  public init(pet: Pet, serviceType: Services, payment: Payment){
    self.pet = pet
    self.serviceType = serviceType
    self.payment = payment
  }

  public func printInvoice(){
    let animalName = pet.name
    let serviceValue = pet.getPrice(service: serviceType)
    let serviceName = serviceType.serviceName
    let finalPayment = payment.nameOfPayment()
    print("Nota Fiscal \n O serviço \(serviceName), foi escolhido para o \(animalName), no valor de R$\(serviceValue) \n Forma de Pagamento:\(finalPayment) ")
  }
}
