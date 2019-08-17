//
//  DetailsVC.swift
//  Aphrodite's Toy Box
//
//  Created by Jessica Alexander on 6/4/19.
//  Copyright © 2019 Jessica Alexander. All rights reserved.
//

import Foundation
import UIKit

class DetailsVC: UIViewController {
    var toy:[Toys] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var Pully = Toys()
        Pully.name = "Kong Tug Toy"
        Pully.description = "My pully is made of rubber. It has three rings..Two of the rings are, ...Hmm who's that stranger should I bork!! Oops I got distracted..., green and one is blue. I got it from my Auntie Jessica. I like to play with my dog cousin O'Malley. The only thing I don't like about it is that it's not made of rope so that I can eat it."
        Pully.image = UIImage(named: "pullys.jpg")
        
        var Bone = Toys()
        Bone.name = "Kong Busy Bone"
        Bone.description = "My bone is made of pink rubber and has holes on both ends for treats. I, ...Ooh a squirrel!! Oops sorry..., got this from my Auntie Jessica. The funny thing about this is that it's way to small for me but I love it anyway. Sometimes I take it outside even though it’s an inside toy."
        Bone.image = UIImage(named: "bone.jpg")
        
        var Tire = Toys()
        Tire.name = "Kong Tire"
        Tire.description = "This is my tire. I love my tire it has so many uses. I can chase it, chew on it, or i can lick peanut butter, ...I LOVE peanut butter. Do you have any? Dang I did it again!..., that my mommy puts in it when I super annoy her. I really really like to annoy her, Tee Hee Hee."
        Tire.image = UIImage(named: "tire.jpg")
        
        var Ball = Toys()
        Ball.name = "Penn Tennis Ball"
        Ball.description = "I love balls. I have so many balls of varying shapes, sizes, colors, and whether or not they can squeak. I LOVE tennis balls especially when they start to get broken down.I like that noise. I had this green squeaky ball once that was made out, ...Ooh my tail I gotta get it!! Shoot I really gotta get out of this puppy stage..., of foam, I loved that ball sometimes when nobody was looking I would eat the foam it was so yummy. Sigh....I really miss that ball."
        Ball.image = UIImage(named: "ball.jpg")
        
        var Breakfest = Toys()
        Breakfest.name = "Bacon and Eggs"
        Breakfest.description = "This was a toy that my mommy found on sale at Petco. I really had high hopes for this toy because who doesn't love bacon and eggs. Even though I killed, ....Ohh Auntie Maegans' home! Did she bring me anything? 😢 I did it again!..., it, it still didn't taste like bacon and eggs. It just tasted like fabric, plastic, and cotton. I was extremely annoyed, but I had fun killing it anyway!"
        Breakfest.image = UIImage(named: "breakfest.jpg")
        
        var Antler = Toys()
        Antler.name = "Deer Antler"
        Antler.description = "This is my (hehe it might be dog cousin O'Malley's) antler. I can spend, ...sssnnoorree...Sorry I dozed off..., hours chewing on it. My favorite thing to do is play keep away with my dog cousin O'Malley"
        Antler.image = UIImage(named: "antler.jpg")
        
        var Shark = Toys()
        Shark.name = "Deedle Dude Singing Shark"
        Shark.description = "This shark was a present from my Auntie Jessica. I'm of two minds about this toy. On one hand I love it because my Auntie, ...Wanna go to the park? I LOVE the park!! I wanna go to the park lets go! 😭 Auntie Jessica said I had to finish this first...., Jessica gave it to me but I also am scared of it cause it sings a Deedle Doo song and if I accidentally set it off I cry and run away."
        Shark.image = UIImage(named: "shark.jpg")
        
        var Kong = Toys()
        Kong.name = "Kong Classic Dog Toy"
        Kong.description = "My Kong is made of rubber. I really like this toy because my mommy can put treats and peanut butter inside it which makes it the best. My Auntie Jessica,...I love my Auntie Jessica but she really needs to do her own homework. I AM NOT HER SLAVE!!! Ooh look a bird and a squirrel!! Excuse me I SOOO gotta bork at them!!!..., tricks me sometimes by putting Benadryl in it cause sometimes I'm a little excited at night, that doesn’t seem fair does it."
        Kong.image = UIImage(named: "kong.jpg")
        
        toy += [Pully, Bone, Tire, Ball, Breakfest, Antler, Shark, Kong]
        title = toy[currentIndex].name
        lblDescription.text = toy[currentIndex].description
        imgToy.image = toy[currentIndex].image
    }
    @IBOutlet weak var imgToy: UIImageView!
    
    @IBOutlet weak var lblDescription: UILabel!
    
    
}
