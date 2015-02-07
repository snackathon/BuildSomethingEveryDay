//
//  MainNavControllerView.swift
//  Build Something Every Day
//
//  Created by NF Developer Account on 7/02/2015.
//  Copyright (c) 2015 snackathon. All rights reserved.
//

import UIKit

class MainNavControllerView: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let questionNavController = storyboard.instantiateViewControllerWithIdentifier("questionNavController") as QuestionNavigationViewController
        
        questionNavController.modalPresentationStyle = UIModalPresentationStyle.FormSheet;
        //questionNavController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        //performSegueWithIdentifier("presentQuestionNavModally", sender: self);
        
        
        self.presentViewController(questionNavController, animated: true) { () -> Void in
            //
            println("Question nav controller presented by root nav controller")
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
