//
//  ViewController.swift
//  Word Garden
//
//  Created by Jack Sexton on 2/5/18.
//  Copyright © 2018 Jack Sexton. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    func updateUIAfterGuess()
    {
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
        
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField)
    {
        if let letterGuessed = guessedLetterField.text?.last
        {
                                    // String Interpolation
            guessedLetterField.text = "\(letterGuessed)"
            guessLetterButton.isEnabled = true
        }
        else
        {
            //Disable button if there isn't a character
            guessLetterButton.isEnabled = false
        }
    }
    
    @IBAction func doneKeyPressed1(_ sender: UITextField)
    {
        updateUIAfterGuess()
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton)
    {
        updateUIAfterGuess()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton)
    {
        
    }
    
    


}

