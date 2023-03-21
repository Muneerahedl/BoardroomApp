//
//  SecondViewController.swift
//  BoardroomApp
//
//  Created by rahaf on 29/08/1444 AH.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!
    
    @IBOutlet weak var dateCollection: UICollectionView!
    
    @IBOutlet weak var myTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.delegate = self
        myTable.dataSource = self
        
        dateCollection.dataSource = self
        dateCollection.dataSource = self
        
        //set labels
        lbl1.text = "Heloo"
        lbl2.text = "line number2"
        
        if let layout = dateCollection.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }

    }

    
}

//TableView
extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell = myTable.dequeueReusableCell(withIdentifier: "tableCollection", for: indexPath) as! TableViewCell
        
        cell.cellImage.image = UIImage(systemName: "heart.fill")
        cell.label1.text = "heloo"
        
        return cell
    }
    
    
}

//CollectionView
extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dateCollection.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        
        cell.date.text = "12"
        cell.days.text = "Mon"
        
        return cell
    }
    
    
}
