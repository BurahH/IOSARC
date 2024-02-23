struct Car {
    var brand: String
    var year: Int
    var trunkVolume: Int
    var bodyVolume: Int
    var engineStart: Bool
    var windowOpen: Bool
    var trunkVolumeFilled: Int
    
    mutating func activityCar(activity: WhenCarDo) -> Void {
        switch activity {
            case .StartTheEngine:
                self.engineStart = true
            case .StopTheEngine:
                self.engineStart = false
            case .OpenTheWindows:
                self.windowOpen = true
            case .CloseTheWindows:
                self.windowOpen = false
            case .LoadCargoOfACertainVolumeFromTheTrunk:
                self.trunkVolumeFilled = trunkVolumeFilled + 1
            case .UnloadCargoOfACertainVolumeFromTheTrunk:
                self.trunkVolumeFilled = trunkVolumeFilled - 1
        }
    }
}

var lightCar = Car(brand: "VW Пассат B6", year: 2015, trunkVolume: 565, bodyVolume: 2400, engineStart: false, windowOpen: false, trunkVolumeFilled: 234)
print(lightCar)
var heavyCar = Car(brand: "Белаз-75710", year: 2013, trunkVolume: 450000, bodyVolume: 16400, engineStart: true, windowOpen: false, trunkVolumeFilled: 45)
print(heavyCar)

enum WhenCarDo {
    case StartTheEngine
    case StopTheEngine
    case OpenTheWindows
    case CloseTheWindows
    case LoadCargoOfACertainVolumeFromTheTrunk
    case UnloadCargoOfACertainVolumeFromTheTrunk
}

heavyCar.activityCar(activity: WhenCarDo.StopTheEngine)
heavyCar.activityCar(activity: WhenCarDo.OpenTheWindows)
lightCar.activityCar(activity: WhenCarDo.StartTheEngine)
print(lightCar)
print(heavyCar)

var dict: Dictionary = ["lightCar": lightCar, "heavyCar": heavyCar]