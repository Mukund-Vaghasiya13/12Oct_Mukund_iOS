//
//  ViewController.swift
//  mapExample
//
//  Created by Mukund vaghasiya  on 03/02/23.
//


import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController{

    @IBOutlet weak var mapViewKit: MKMapView!
    var locationManager = CLLocationManager()
    var region:Double = 10000
    override func viewDidLoad() {
        super.viewDidLoad()
       setLoacation()
    }
    func setLoacation()
    {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func zoomUserLocation()
    {
        let zomm = MKCoordinateRegion(center: locationManager.location!.coordinate, latitudinalMeters: region, longitudinalMeters: region)
        mapViewKit.setRegion(zomm, animated: true)
    }
    

}

extension ViewController:CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.last == nil{
            return
        }
        let zomm = MKCoordinateRegion(center: locationManager.location!.coordinate, latitudinalMeters: region, longitudinalMeters: region)
        mapViewKit.setRegion(zomm, animated: true)
        
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            switch CLLocationManager.authorizationStatus(){
                
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
                break
            case .restricted:
                break
            case .denied:
                print("🔴 error not get location")
            case .authorizedAlways:
                break
                
            case .authorizedWhenInUse:
                mapViewKit.showsUserLocation = true
                zoomUserLocation()
                locationManager.startUpdatingLocation()
                break
                
            @unknown default:
                break
            
        }
    }
    
}

