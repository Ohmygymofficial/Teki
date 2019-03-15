//
//  ViewController.swift
//  Teki
//
//  Created by Erwan PASTE on 15/03/2019.
//  Copyright © 2019 Erwan PASTE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // creation d'un tableau contenant les noms des celebrites
    var celebrities = ["le JCVD","le JPP","le Francis Lalanne","le Bernard Minet","le Georges Bush","le Brad Pitt","le Justin Bieber","La Madonna","La Dorothé","La Britney Spears","la Shakira"]
    var activitees = ["avec une casserole dans les mains","avec un chapeau sur la tête","avec une cuillère dans les mains","avec un yaourt dans la bouche","avec une manette sur la tête"]
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBAction func changeQuote() {
        
        // variable aleatoire de l'index des celebritees puis print du resultat
        let randomindex = Int(arc4random_uniform(UInt32(celebrities.count)))
        let randomcelebrity = celebrities[randomindex]
        
        
        // variable aleatoire de l'index des activitees puis print du resultat
        let randomindex2 = Int(arc4random_uniform(UInt32(activitees.count)))
        let randomactivity = activitees[randomindex2]
        
        
        quoteLabel.text = "Tu es " + randomcelebrity + " " + randomactivity + "!"
    }
}

