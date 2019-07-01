//
//  JokeDefinitionViewController.swift
//  Joke Bank
//
//  Created by Dianna Carmalt on 5/10/19.
//  Copyright © 2019 Dianna Carmalt. All rights reserved.
//

import UIKit

class JokeDefinitionViewController: UIViewController {
    
    var joke = ""

    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = joke
        
        // use of stmts to check joke and display
        if joke == "Chicken" {
            jokeLabel.text = "Q: Why did the chicken cross the raod? /n/nA: To get to the other side"
        }
        if joke == "Walk Into A Bar" {
            jokeLabel.text = "A horse walkd into a bar and the bartender says, \"Why the long face?\""
        }
        if joke == "Olives" {
            jokeLabel.text = "Two olives are on an olive tree brance playing around. One of the olives bumps the other and knocks him off the branch. His friend wobbles to the edge and shouts down, \"Are you ok?\" \nHis friend on the ground squeaks out,\"Don't worry...olive...\""
        }
        if joke ==  "Racer" {
            jokeLabel.text = "Q: What did the hotdog say when he crossed the finish line? /n/nA: I'm the weiner!"
        }
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
