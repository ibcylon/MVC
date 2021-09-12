//
//  ViewController.swift
//  MVC
//
//  Created by Kanghos on 2021/09/10.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let model = CardModel()
    var cardsArray = [Card]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cardArray = model.getCards()
        
        //set the view controller as the datasoource and delegate of the collection view
        collectionView.dataSource = self
        collectionView.delegate = self 
    }
    //MARK: - Collection View Delegate Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //return number of cards
        return cardsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //get a cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath)
        
        //TODO:configure it
        
        //return it
        return cell
    }
    
}

