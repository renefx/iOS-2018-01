//
//  ViewController.swift
//  Projeto Mapa
//
//  Created by Renê Xavier on 25/10/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate,  MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.distanceFilter = 100
        locationManager.startUpdatingLocation()
        
        mapView.delegate = self
        mapView.showsUserLocation = true
        
        let copacabana = CLLocationCoordinate2D(latitude: -22.9523905, longitude: -43.2216453)
        let annotation = MKPointAnnotation()
        annotation.title = "Copacabana"
        annotation.coordinate = copacabana
        mapView.addAnnotation(annotation)
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        for (localizacao, index) in locations.enumerated() {
//            print("index: \(index) \n \(localizacao)")
//        }
        print(locations[0].coordinate.latitude)
        print(locations[0].coordinate.longitude)
        let copacabana = CLLocationCoordinate2D(latitude: -22.9523905, longitude: -43.2216453)
        mapView.setCenter(copacabana, animated: true)
        locationManager.stopUpdatingLocation()
    }
}

