//
//  ViewController.swift
//  deirection
//
//  Created by Mukund vaghasiya  on 08/03/23.
//

    import MapKit
    import UIKit

    class ViewController: UIViewController {
        @IBOutlet var mapView: MKMapView!

        override func viewDidLoad() {
            super.viewDidLoad()
            getDirections()
        }

        func getDirections() {
            let request = MKDirections.Request()
            // Source
            let sourcePlaceMark = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 39.058, longitude: -100.21))
            request.source = MKMapItem(placemark: sourcePlaceMark)
            // Destination
            let destPlaceMark = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 36.79, longitude: -98.64))
            request.destination = MKMapItem(placemark: destPlaceMark)
            // Transport Types
            request.transportType = [.automobile, .walking]

            let directions = MKDirections(request: request)
            directions.calculate { response, error in
                guard let response = response else {
                    print("Error: \(error?.localizedDescription ?? "No error specified").")
                    return
                }

                let route = response.routes[0]
                self.mapView.addOverlay(route.polyline)

                
            }
        }
    }
    
