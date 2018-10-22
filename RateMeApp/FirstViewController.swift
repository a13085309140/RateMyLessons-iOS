//
//  FirstViewController.swift
//  RateMeApp
//
//  Created by Andreas Wassmer on 16.10.18.
//  Copyright © 2018 Andreas Wassmer. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var veryBadRatingBtn: UIButton!
    @IBOutlet weak var badRatingBtn: UIButton!
    @IBOutlet weak var okRatingBtn: UIButton!
    @IBOutlet weak var goodRatingBtn: UIButton!
    @IBOutlet weak var veryGoodRatingBtn: UIButton!
    @IBOutlet weak var ratingLbl: UILabel!
    
    var rating = 0
    var ratingSum = 0
    var numOfRatings = 0
    var averageRating: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ratingLbl.text = ""
        ratingSum = 0
        veryBadRatingBtn.addTarget(self, action: #selector(ratingBtnPressed), for: .touchUpInside)
        veryBadRatingBtn.tag = 0
        
        badRatingBtn.addTarget(self, action: #selector(ratingBtnPressed), for: .touchUpInside)
        badRatingBtn.tag = 1
        
        okRatingBtn.addTarget(self, action: #selector(ratingBtnPressed), for: .touchUpInside)
        okRatingBtn.tag = 2
        
        goodRatingBtn.addTarget(self, action: #selector(ratingBtnPressed), for: .touchUpInside)
        goodRatingBtn.tag = 3
        
        veryGoodRatingBtn.addTarget(self, action: #selector(ratingBtnPressed), for: .touchUpInside)
        veryGoodRatingBtn.tag = 4
    }
    
    @IBAction func ratingBtnPressed(_ sender: UIButton) {
        ratingLbl.text = String(sender.tag)
        numOfRatings += 1
        ratingSum += sender.tag
        averageRating = Float(ratingSum) / Float(numOfRatings)
        print(averageRating)
    }
}

