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
    //
    @IBOutlet weak var lbl1: UILabel!
    //
    @IBOutlet weak var lbl2: UILabel!
   //
    @IBOutlet weak var biglable: UILabel!
    //
    @IBOutlet weak var dateCollection: UICollectionView!
  //
    @IBOutlet weak var myTable: UITableView!
    
    var boradRooms : [BoardRoomElement] = []
    
  override func viewDidLoad() {
        super.viewDidLoad()
      getData()
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
    
    func getData(){
       

            let url = URL(string: "https://8cd2971c-9293-4e45-b01c-f3c2c582ad1a.mock.pstmn.io/boardrooms")
        
            var request : URLRequest = URLRequest(url: url!)
      
            URLSession.shared.dataTask(with: request) {
                data,response,error in
                do {
                    if let data = data {
                        if let boardrooms = try? JSONDecoder().decode([BoardRoomElement].self, from: data){
                            print("boardrooms\(boardrooms)")
                            self.boradRooms = boardrooms
                            
                            DispatchQueue.main.async() {
                                self.myTable.reloadData()
                                
                            }
                        }
                        else {
                            print("error\(error?.localizedDescription)")
                        }
                        
                    }
                    else {
                        print("error\(error?.localizedDescription)")
                    }
                    
                } catch let error as NSError {
                    print(error.localizedDescription)
                }
            }
            .resume()
        }
        
        
        
    

    
}

//TableView
extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boradRooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell = myTable.dequeueReusableCell(withIdentifier: "tableCollection", for: indexPath) as! TableViewCell
        let boardroome = self.boradRooms[indexPath.row]
   //     cell.cellImage.image = UIImage(systemName: "heart.fill")
        cell.name.text = boardroome.name
        cell.discription.text = boardroome.description
   
   //     cell.setupCell(name: "hello", imageName: "", disc: "")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let boardroom = self.boradRooms[indexPath.row]
        print(boardroom.name)
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
