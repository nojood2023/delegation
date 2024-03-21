import UIKit


//delegation
//protocol CanMakeTea {
//    func makeTea()
//}
//
//
//class Manager {
//    var delegate : CanMakeTea?
//    func fixMood () {
//        delegate?.makeTea()
//    }
//}
//
//
//class Employess : CanMakeTea {
//    init(handler : Manager) {
//        handler.delegate = self
//    }
//    func makeTea() {
//        print("making a cup of tea")
//    }
//    
//    
//}
//
//var Omar = Manager()
//var Osama = Employess(handler: Omar)
//Omar.fixMood()


protocol MakingFood {
    func makeFood()
    
}

class child {
    var delegate : MakingFood?
    func needFood(){
        delegate?.makeFood()
    }
}

class Mom : MakingFood {
    init(handler : child){
        handler.delegate = self
    }
    func makeFood() {
        print("i can making food")
    }
    
    
}

var baby = child()
var myMom = Mom(handler: baby)
baby.needFood()
