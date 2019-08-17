//
//  insideToyBox.swift
//  Aphrodite's Toy Box
//
//  Created by Jessica Alexander on 6/4/19.
//  Copyright © 2019 Jessica Alexander. All rights reserved.
//

import Foundation
import UIKit

var toy:[Toys] = []
var currentIndex = 0

class insideToyBox: UIViewController {

    @IBAction func Pully(_ sender: UIButton) {
        currentIndex = 0
    }
    @IBAction func Bone(_ sender: UIButton) {
        currentIndex = 1
    }
    @IBAction func Tire(_ sender: UIButton) {
        currentIndex = 2
    }
    @IBAction func Ball(_ sender: UIButton) {
        currentIndex = 3
    }
    @IBAction func Breakfest(_ sender: UIButton) {
        currentIndex = 4
    }
    @IBAction func Antler(_ sender: UIButton) {
        currentIndex = 5
    }
    @IBAction func Shark(_ sender: UIButton) {
        currentIndex = 6
    }
    @IBAction func Kong(_ sender: UIButton) {
        currentIndex = 7
    }
}
