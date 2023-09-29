import Foundation

public protocol InvoiceProtocol {
    func printInvoice(completion: @escaping (String) -> Void)
}

public class Invoice: InvoiceProtocol{
    let pet: PetProtocol
    let serviceType: Services
    let payment: Payment
    
    public init(pet: PetProtocol, serviceType: Services, payment: Payment){
        self.pet = pet
        self.serviceType = serviceType
        self.payment = payment
    }
    
  
    public func printInvoice(completion: @escaping (String) -> Void) {
        let animalName = pet.name
        let serviceValue = pet.getPrice(service: serviceType)
        let serviceName = serviceType.serviceName
        let finalPayment = payment.nameOfPayment()
        let response: String = ("Nota Fiscal \n O serviço \(serviceName), foi escolhido para o \(animalName), no valor de R$\(serviceValue) \n Forma de Pagamento:\(finalPayment) ")
        DispatchQueue.global().async {
            sleep(3)
            DispatchQueue.main.async {
                completion(response)
            }
        }
    }
}
