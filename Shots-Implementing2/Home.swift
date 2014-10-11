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
        ShareView.alpha = 0
        
        UIView.animateWithDuration(0.5, animations: {
            self.ShareView.alpha = 1
        
        })
        
    }
    
    @IBAction func UserButtonDidPress(sender: AnyObject) {
        PopoverView.hidden = false
    }
    
    @IBAction func ImageButtonDidPress(sender: AnyObject) {
   
        UIView.animateWithDuration(0.7, animations: {
            self.DialogView.frame = CGRectMake(0, 0, 320, 568)
            self.DialogView.layer.cornerRadius = 0
            self.ImageButton.frame = CGRectMake(0, 0, 320, 240)
            self.LikeButton.alpha = 0
            self.ShareButton.alpha = 0
            self.userButton.alpha = 0
            self.HeaderView.alpha = 0
        
       
            },completion: { finished in
                self.performSegueWithIdentifier("HomeToDetail", sender: self)
            
        })
    }
    // Change the Status Bar Color
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
         return UIStatusBarStyle.LightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Doing blur
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
