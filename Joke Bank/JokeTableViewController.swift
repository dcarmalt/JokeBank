//
//  JokeTableViewController.swift
//  Joke Bank
//
//  Created by Dianna Carmalt on 5/8/19.
//  Copyright © 2019 Dianna Carmalt. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes = ["Chicken", "Walk Into A Bar", "Olives", "Racer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //how many rows?  10 jokes - array count
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jokes.count
    }

    // what goes inside?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        //indexPath.row
        
        //cell.textLabel?.text = "Hello There!"

        cell.textLabel?.text = jokes[indexPath.row]
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Tapped!")
        //print(indexPath.row)
        
       let selectedJoke = jokes[indexPath.row]
        
       performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let jokeVC = segue.destination as? JokeDefinitionViewController {
            
            if let selectedJoke = sender as? String {
                jokeVC.joke = selectedJoke
            }
            
        }
    }
}







