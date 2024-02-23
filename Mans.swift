class Man {
    var id: Int64
    var passport: Passport?
    static var newId: Int64 = 0
    
    init() {
        self.id = Man.newId
        Man.newId = Man.newId + 1
    }
      
    deinit {
        print("Мужчина имеющий номер \(id) удален из памяти")
    }
}

class Passport {
    unowned let man: Man
    
    init(man: Man) {
        self.man = man
    }
    
    deinit {
        print("Паспорт удален из памяти")
    }
}

var man: Man? = Man()
var man2: Man? = Man()
var passport: Passport? = Passport(man: man!)
var passport2: Passport? = Passport(man: man!)
man?.passport = passport
man2?.passport = passport2
passport = nil
man = nil
passport2 = nil
man2 = nil