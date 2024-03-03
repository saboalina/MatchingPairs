//
//  ViewController.swift
//  MatchingPairs
//
//  Created by Alina Sabo Brandus on 03.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var firstColumStack: UIStackView!
    @IBOutlet var secondColumStack: UIStackView!
    @IBOutlet var thirdColumStack: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let api = API()
        api.fetchThemes() { cards in
            guard cards != nil else { return }
            
            for card in cards! {
                print("Card title: \(card.title)")
                print("Card symbol: \(card.cardSymbol)")
                print("Symbols: \(card.symbols)")
                print("Card color - Red: \(card.cardColor.red), Green: \(card.cardColor.green), Blue: \(card.cardColor.blue)")
                print("----------------------------------------")
            }

        }
        
    }


}

