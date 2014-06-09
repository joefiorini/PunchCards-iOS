//
//  SignInViewController.swift
//  PunchCards
//
//  Created by Joseph Fiorini on 6/8/14.
//  Copyright (c) 2014 densitypop. All rights reserved.
//

import Foundation
import UIKit

protocol SignInDelegate {
    func setCurrentUser(user: FAUser)
}

class SignInViewController: UIViewController {

    var authClient: FirebaseSimpleLogin?
    var delegate: SignInDelegate?

    @IBAction func requestedSignInWithTwitter(sender: AnyObject!) {
        if let client = authClient {
            client.loginToTwitterAppWithId("rv3XUcukP1pURNrXNDiTkUnBm", multipleAccountsHandler: { usernames in
                NSLog("Twitter usernames: \(usernames)")
                return 0
                //self.presentUsernameSelection(usernames)
            }, withCompletionBlock: { error, user in
                if error {
                    NSLog("Error authenticating: \(error)")
                } else {
                    self.delegate?.setCurrentUser(user)
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
            })
        }
    }

    @IBAction func requestedSignInWithFacebook(sender: AnyObject!) {

    }

    @IBAction func requestedSignInWithGoogle(sender: AnyObject!) {

    }

    @IBAction func requestedGuestSignIn(sender: AnyObject!) {
        
    }

//    func presentUsernameSelection(usernames: String[]) -> Int {
//
//    }
}