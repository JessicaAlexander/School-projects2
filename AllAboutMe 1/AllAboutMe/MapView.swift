//
//  MapView.swift
//  AllAboutMe
//
//  Created by Jessica Alexander on 6/27/19.
//  Copyright © 2019 Jessica Alexander. All rights reserved.
//

import UIKit
import MapKit

var locations:[MKPointAnnotation] = []

class MapView: UIViewController, MKMapViewDelegate{
    
    @IBOutlet weak var MyMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userPoint = UILongPressGestureRecognizer(target: self, action: #selector(self.addNewPin(_:)))
        
        userPoint.minimumPressDuration = 2.0
        MyMap.addGestureRecognizer(userPoint)
        
        let Italy = MKPointAnnotation()
        Italy.coordinate = CLLocationCoordinate2DMake(41.8947400, 12.4839000)
        Italy.title = "Italy"
        
        let Ireland = MKPointAnnotation()
        Ireland.coordinate = CLLocationCoordinate2DMake(53.0602, -7.2285)
        Ireland.title = "Ireland"
        
        let Australia = MKPointAnnotation()
        Australia.coordinate = CLLocationCoordinate2DMake(-19.9275, 131.1921)
        Australia.title = "Australia"
        
        locations += [Italy, Ireland, Australia]
        
        MyMap.addAnnotations(locations)
        
        let MyRegion = MKCoordinateRegion(center: Italy.coordinate, latitudinalMeters: 5500000, longitudinalMeters: 5500000)
        MyMap.setRegion(MyRegion, animated: true)
        
        func MyMapView(_ MapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView!{
            let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier")
            return pin
        }
    }
    
    @objc func addNewPin(_ gestureRecognizer: UIGestureRecognizer){
        
        let TouchPoint = gestureRecognizer.location(in: self.MyMap)
        
        let NewCoordinate:CLLocationCoordinate2D = MyMap.convert(TouchPoint, toCoordinateFrom: self.MyMap)
        
        let Alert = UIAlertController(title: "New Location", message: "Enter the name for this location", preferredStyle: UIAlertController.Style.alert)
        
        Alert.addTextField(configurationHandler: {(locationText: UITextField!) in locationText.placeholder = "Enter location here please 🤩!"})
        
        let  AddLocation = UIAlertAction(title: "Add Location", style: UIAlertAction.Style.destructive) {(UIAlertAction) -> Void in
            
            let  NewAnnotation = MKPointAnnotation()
            let  TextField = Alert.textFields![0] as UITextField
            NewAnnotation.coordinate = NewCoordinate
            NewAnnotation.title = TextField.text
            self.MyMap .addAnnotation(NewAnnotation)
            
            locations.append(NewAnnotation)
            places.append(NewAnnotation.title!)
        }
        Alert.addAction(AddLocation)
        
        self.present(Alert, animated: true, completion:  nil)
    }
}
