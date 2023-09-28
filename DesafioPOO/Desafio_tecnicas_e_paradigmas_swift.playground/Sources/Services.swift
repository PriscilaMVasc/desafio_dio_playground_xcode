import Foundation

public enum Services: Int{
  case bath = 1
  case grooming = 2
  case vaccination = 3
  case ring = 4
  case cutClaws = 5
  case bloodTest = 6

  var serviceName: String {
    switch self {
      case .bath:
      return "Banho"
      case .grooming:
      return "Banho e Tosa"
      case .vaccination:
      return "Vacinação"
      case .ring:
      return "Anilhar"
      case .cutClaws:
      return "Cortar Garras"
      case .bloodTest:
      return "Exame de Sangue"
    }
  }
}
