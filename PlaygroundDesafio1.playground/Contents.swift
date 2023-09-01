let name = "Steve"
var optionalName: String? = "Jobs"
let printName: String = optionalName ?? "Wosniak"
let totalName = "\(name) \(printName)"
print(totalName)

if let unwrappedName = optionalName{
    let fullName: String = "\(name) \(unwrappedName)"
    print(fullName)
}
