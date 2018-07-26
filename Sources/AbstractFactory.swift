import UIKit

protocol Car
{
    func getCarName() -> String
    func getCarFeatures() ->String
}

class NonLuxuryCar:Car
{
    func getCarName() -> String
    {
        return "Non Luxury Car name"
    }
    func getCarFeatures() ->String
    {
        return "Non luxury Car features"
    }
}

class LuxuryCar:Car
{
    func getCarName() -> String
    {
        return "Luxury Car name"
    }
    func getCarFeatures() ->String
    {
        return "luxury Car features"
    }
}

protocol SUV
{
    func getSUVName() -> String
    func getSUVFeatures() ->String
}

class NonLuxurySUV:SUV
{
    func getSUVName() -> String
    {
        return "Non Luxury SUV name"
    }
    func getSUVFeatures() ->String
    {
        return "Non luxury SUV features"
    }
}

class LuxurySUV:SUV
{
    func getSUVName() -> String
    {
        return "Luxury SUV name"
    }
    func getSUVFeatures() ->String
    {
        return "luxury SUV features"
    }
}

protocol VehicleFactory
{
    func getCar() -> Car?
    func getSuv() -> SUV?
}

extension VehicleFactory
{
    func getCar() -> Car?
    {
        return nil
    }
    func getSuv() -> SUV?
    {
        return nil
    }
}

class LuxuryVehicleFactory:VehicleFactory
{
    func getCar() -> Car?
    {
        return LuxuryCar()
    }
    func getSuv() -> SUV?
    {
        return LuxurySUV()
    }
}

class NonLuxuryVehicleFactory:VehicleFactory
{
    func getCar() -> Car?
    {
        return NonLuxuryCar()
    }
    func getSuv() -> SUV?
    {
        return NonLuxurySUV()
    }
}

class AbstractVehicleFactory:VehicleFactory
{
    static let kLuxuryVehicle = "LUXURY"
    static let kNonLuxuryVehicle = "NON LUXURY"
    
    class func getVehicleFactory(for vehicleCategory:String) -> VehicleFactory
    {
        if vehicleCategory == kLuxuryVehicle
        {
            return LuxuryVehicleFactory()
        }
        else
        {
            return NonLuxuryVehicleFactory()
        }
    }
}

//let absVehicleFactory = AbstractVehicleFactory.getVehicleFactory(for: "LUXURY")
//absVehicleFactory.getCar()?.getCarName()
//absVehicleFactory.getSuv()?.getSUVFeatures()
//
//let nonVehicleFactory = AbstractVehicleFactory.getVehicleFactory(for: "NON LUXURY")
//nonVehicleFactory.getCar()?.getCarName()
//nonVehicleFactory.getSuv()?.getSUVFeatures()

