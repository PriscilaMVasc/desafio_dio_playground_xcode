import Foundation

public enum Payment: Int{
  case debit = 1
  case credit = 2
  case pix = 3

  func nameOfPayment() -> String{
    switch self{
      case .debit:
      return "Cartão Débito"
      case .credit:
      return "Cartão Crédito"
      case .pix:
      return "Pagamento em Pix"
    }

  }
}
