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
    @IBOutlet weak var MaskButton: UIButton!
    @IBOutlet weak var EmailButton: UIButton!
    @IBOutlet weak var TwitterButton: UIButton!
    @IBOutlet weak var FacebookButton: UIButton!
    @IBOutlet weak var ShareLabelsView: UIView!
    
    
    @IBAction func maskButtonDidPress(sender: AnyObject) {
        spring(0.5) {
            self.MaskButton.alpha = 0
        }
        hideShareView()
        hidePopover()
    }
    
    func ShowMask() {
        self.MaskButton.hidden = false
        self.MaskButton.alpha = 0
        spring(0.5){
        self.MaskButton.alpha = 1
        }
    }
    
    @IBAction func LikeButtonDidPress(sender: AnyObject) {
        
        
    }
    
    @IBAction func ShareButtonDidPress(sender: AnyObject) {
        ShareView.hidden = false
        ShowMask()
        ShareView.transform = CGAffineTransformMakeTranslation(0, 200)
        EmailButton.transform = CGAffineTransformMakeTranslation(0, 200)
        TwitterButton.transform = CGAffineTransformMakeTranslation(0, 200)
        FacebookButton.transform = CGAffineTransformMakeTranslation(0, 200)
        ShareLabelsView.alpha = 0
        
        spring(0.5, {
             self.ShareView.transform = CGAffineTransformMakeTranslation(0, 0)
             self.DialogView.transform = CGAffineTransformMakeScale(0.8, 0.8)
        })
        springWithDelay(0.5, 0.05) {
            self.EmailButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }
        springWithDelay(0.5, 0.10) {
            self.TwitterButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }
        springWithDelay(0.5, 0.15) {
            self.FacebookButton.transform = CGAffineTransformMakeTranslation(0, 0)
        }
        springWithDelay(0.5, 0.2) {
            self.ShareLabelsView.alpha = 1
        }
                
    }
    
    func hideShareView() {
        spring(0.5) {
        self.ShareView.transform = CGAffineTransformMakeTranslation(0, 0)
        self.DialogView.transform = CGAffineTransformMakeScale(1, 1)
        self.ShareView.hidden = true
            
        }
    }
    
    @IBAction func UserButtonDidPress(sender: AnyObject) {
        PopoverView.hidden = false
        //position before animate
        let scale = CGAffineTransformMakeScale(0.3, 0.3)
        let translate = CGAffineTransformMakeTranslation(50, -50)
        PopoverView.transform = CGAffineTransformConcat(scale, translate)
        PopoverView.alpha = 0
        
        ShowMask()
        
        spring( 0.5) {
            let scale = CGAffineTransformMakeScale(1,1)
            let translate = CGAffineTransformMakeTranslation(0, -0)
            self.PopoverView.transform = CGAffineTransformConcat(scale, translate)
            self.PopoverView.alpha = 1
        }
    }
    
        func hidePopover() {
            spring( 0.5) {
                self.PopoverView.hidden = true
        }
    }
    
  
    @IBAction func ImageButtonDidPress(sender: AnyObject) {
            springWithCompletion(0.5, {

            self.DialogView.frame = CGRectMake(0, 0, 320, 568)
            self.DialogView.layer.cornerRadius = 0
            self.ImageButton.frame = CGRectMake(0, 0, 320, 240)
            self.LikeButton.alpha = 0
            self.ShareButton.alpha = 0
            self.userButton.alpha = 0
            self.HeaderView.alpha = 0
            
            }) { Finished in
            self.performSegueWithIdentifier("HomeToDetail", sender: self)
        }
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
       
        //position after animate - is very invisible
      let scale = CGAffineTransformMakeScale(0.5, 0.5)
      let translate = CGAffineTransformMakeTranslation(0, -200)
      DialogView.transform = CGAffineTransformConcat(scale, translate)
        
       
         //position after animate - - is very invisible
        spring(0.5) {
            let scale = CGAffineTransformMakeScale(1, 1)
            let translate = CGAffineTransformMakeTranslation(0, 0)
            self.DialogView.transform = CGAffineTransformConcat(scale, translate)
        
        }
        
        
        // Do any additional setup after loading the view.
    }

    
     /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */

}
