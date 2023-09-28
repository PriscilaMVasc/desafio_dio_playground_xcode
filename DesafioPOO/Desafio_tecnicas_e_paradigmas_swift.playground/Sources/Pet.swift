import Foundation

public class Pet {
  let name: String
 private let weight: Double
 private let age: Int
 private let gender: Gender

  public enum Gender {
    case female
    case male
  }

  init(name: String, weight: Double, age: Int, gender: Gender) {
    self.name = name
    self.weight = weight
    self.age = age
    self.gender = gender
  }
  func getPrice(service: Services) -> Double {
    return 50.0
  }
}
