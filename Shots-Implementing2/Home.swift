//
//  Home.swift
//  Shots-Implementing2
//
//  Created by Nelson on 11/10/14.
//  Copyright (c) 2014 Nelson. All rights reserved.
//

import UIKit

class Home: UIViewController {

    
    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var BackgroundImageView: UIImageView!
    @IBOutlet weak var BackgroundMaskView: UIView!
    @IBOutlet weak var DialogView: UIView!
    @IBOutlet weak var PopoverView: UIView!
    
    @IBOutlet weak var ShareButton: UIButton!

    @IBOutlet weak var ShareView: UIView!
    
    @IBOutlet weak var ImageButton: UIButton!
    @IBOutlet weak var HeaderView: UIView!
    @IBOutlet weak var LikeButton: UIButton!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var AuthorLabel: UILabel!
    @IBOutlet weak var AvatarImageView: UIImageView!
    @IBOutlet weak var DialogfavoritesImageView: UIImageView!
    @IBOutlet weak var FavoritesLabel: UILabel!
    
    
    @IBAction func LikeButtonDidPress(sender: AnyObject) {
        
        
    }
    
    @IBAction func ShareButtonDidPress(sender: AnyObject) {
        ShareView.hidden = false
        
    }
    
    @IBAction func UserButtonDidPress(sender: AnyObject) {
        PopoverView.hidden = false
    }
    
    @IBAction func ImageButtonDidPress(sender: AnyObject) {
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        insertBlurView(BackgroundMaskView, UIBlurEffectStyle.Dark)
        insertBlurView(HeaderView, UIBlurEffectStyle.Dark)
        // Do any additional setup after loading the view.
    }

    
     /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */

}
