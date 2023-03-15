//
//  ViewController.swift
//  5) drop Pin
//
//  Created by Mukund vaghasiya  on 15/03/23.
//

import UIKit
import MapKit
import CoreLocation
class ViewController: UIViewController {

    
    @IBOutlet weak var MapPin: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...9{
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: 22.290393 + Double(i) , longitude: 70.778591 + Double(i))
            annotation.title = "Random Palace \(i)"
            MapPin.addAnnotation(annotation)
        }
    }


}

