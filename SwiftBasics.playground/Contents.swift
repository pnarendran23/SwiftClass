
import Foundation //Framework or library

let today = Date()
print(today)



class MyFirstClass {
  var dateString: String?
  var dateFormatter: DateFormatter?
  
  func setDateString(dateString: String){
    self.dateString = dateString
  }
  
  func setDateFormat(dateFormat: String) {
    dateFormatter = DateFormatter()
    dateFormatter?.dateFormat = dateFormat
  }
  
  
  init(dateString: String, dateFormat: String){
    setDateString(dateString: dateString)
    setDateFormat(dateFormat: dateFormat)
  }
  
  func getAsDate() -> String?{
    let date = dateFormatter?.date(from: dateString!) // Later; Optional handling
    dateFormatter?.dateFormat = "dd MMM yyyy"
    return dateFormatter?.string(from: date!)
  }
  
}

let object = MyFirstClass(dateString: "18/05/2023", dateFormat: "dd/MM/yyyy") // 18 May 2023
print(object.getAsDate())


// Arrays

var myArray = [3,21,1,10,23,2,4,2,2,3,2,23,43,23,4234,45,645] // Homogeneous collection

print(myArray.filter({$0 < 50 }).sorted(by: {$0 < $1}))


//Any

var myArrayOfDictionaries: [Dictionary<String, Any>] = [["name": "Student name", "designation": "Engineering", "rollNo": 23, "pinCode": 217553], ["name": "Student name", "designation": "Engineering", "rollNo": 23, "pinCode": 217553], ["name": "Student name", "designation": "Engineering", "rollNo": 223, "pinCode": 217553],["name": "Student name", "designation": "Engineering", "rollNo": 123, "pinCode": 217553], ["name": "Student name for 283", "designation": "Engineering", "rollNo": 283, "pinCode": 217553],["name": "Student name", "designation": "Engineering", "rollNo": 253, "pinCode": 217553],["name": "Student name", "designation": "Engineering", "rollNo": 232, "pinCode": myArray]]


print(myArrayOfDictionaries.filter({$0["rollNo"] as? Int == 283}).first?["name"])
