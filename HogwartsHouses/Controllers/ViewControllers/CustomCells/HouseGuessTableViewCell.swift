//
//  HouseGuessTableViewCell.swift
//  HogwartsHouses
//
//  Created by Austin Goetz on 7/30/20.
//  Copyright © 2020 Austin Goetz. All rights reserved.
//

import UIKit

// MARK: - Protocols

class HouseGuessTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var personGuessLabel: UILabel!
    @IBOutlet weak var houseImageButton: UIButton!
    
    // MARK: - Class Properties
    var guess: HouseGuess? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Actions
    @IBAction func houseImageButtonTapped(_ sender: Any) {
    }
    
    // MARK: - Helpers
    func updateViews() {
        guard let guess = guess else { return }
        personGuessLabel.text = guess.guessName
        
    }
    
    func updateButtonFor(guess: HouseGuess) {
        if guess.isVisible {
            if let house = guess.house {
                houseImageButton.setImage(UIImage(named: house), for: .normal)
            }
        } else {
            houseImageButton.setImage(#imageLiteral(resourceName: "hogwarts"), for: .normal)
        }
    }
}
