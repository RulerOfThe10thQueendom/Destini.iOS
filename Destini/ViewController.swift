//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let stories = ["Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".", "He nods slowly, unphased by the question.", "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""]
    let answersA = ["I\'ll hop in. Thanks for the help!", "At least he\'s honest. I\'ll climb in.", "I love Elton John! Hand him the cassette tape."]
    let answersB = ["Better ask him if he\'s a murderer first.", "Wait, I know how to change a tire.", "It\'s him or me! You take the knife and stab him."]
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    var storyIndex : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        updateUI(story: 1)
    }
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        if sender.tag == 1 {
            switch storyIndex {
            case 1:
                storyIndex = 3
                updateUI(story: 3)
                return
            case 2:
                storyIndex = 3
                updateUI(story: 3)
                return
            case 3:
                storyIndex = 6
                updateUI(story: 6)
                return
            default:
                print("Error in First Switch")
                return
            }
        }
        else {
            switch storyIndex {
            case 1:
                storyIndex = 2
                updateUI(story: 2)
                return
            case 2:
                storyIndex = 4
                updateUI(story: 4)
                return
            case 3:
                storyIndex = 5
                updateUI(story: 5)
                return
            default:
                print("Error in Second Switch")
                return
            }
        }
    }
    
    // TODO Step 6: Modify the IF-Statement to complete the story
    func updateUI(story: Int) {
        storyTextView.text = stories[story-1]
        
        if storyIndex==4 || storyIndex==5 || storyIndex==6 {
            topButton.isHidden = true
            bottomButton.isHidden = true
        }
        else {
            topButton.setTitle(answersA[story-1], for: .normal)
            bottomButton.setTitle(answersB[story-1], for: .normal)
        }
    }

}

