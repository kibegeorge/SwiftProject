//
//  FoodViewController.swift
//  FoodOrder
//
//  Created by hmbl Apps on 29/10/2021.
//

import UIKit
struct FoodItem{
    var foodImg : UIImage
    var foodName : String
    var price : Double
}

class FoodViewController: UIViewController {
    
    
    var foodData :[FoodItem] = [FoodItem(foodImg: UIImage(imageLiteralResourceName: "Pizza1"), foodName: "Piza", price: 89.90),FoodItem(foodImg: UIImage(imageLiteralResourceName: "Piza2"), foodName: "Piza", price: 80.90),FoodItem(foodImg: UIImage(imageLiteralResourceName: "piza3"), foodName: "Piza", price: 55.90),FoodItem(foodImg: UIImage(imageLiteralResourceName: "piza4"), foodName: "Piza", price: 50.90),FoodItem(foodImg: UIImage(imageLiteralResourceName: "piza4"), foodName: "Piza", price: 40.90)]

    var counter = 0
    var totalAmount = 0.0
    
    @IBOutlet weak var lblDishFive: UILabel!
    @IBOutlet weak var lblDishThree: UILabel!
    @IBOutlet weak var lblDishFour: UILabel!
    @IBOutlet weak var lblDishTwo: UILabel!
    @IBOutlet weak var lblDishOne: UILabel!
    @IBOutlet weak var lblTotalPrice: UILabel!
    @IBOutlet weak var lblFoodName: UILabel!
    @IBOutlet weak var imgFood: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgFood.image = foodData[counter].foodImg
        lblFoodName.text = foodData[counter].foodName
        
    }
    
    @IBAction func btnOrderDish(_ sender: Any) {
        if counter == 0{
            lblDishOne.text = foodData[counter].foodName + " : " + String(foodData[counter].price)
            totalAmount = foodData[counter].price
            lblTotalPrice.text = " Total Price " + String(totalAmount)
        }
        if counter == 1{
            lblDishTwo.text = foodData[counter].foodName + " : " + String(foodData[counter].price)
            totalAmount = totalAmount + foodData[counter].price
            lblTotalPrice.text = " Total Price " + String(totalAmount)
        }
        if counter == 2{
            lblDishThree.text = foodData[counter].foodName + " : " + String(foodData[counter].price)
            totalAmount = totalAmount + foodData[counter].price
            lblTotalPrice.text = " Total Price " + String(totalAmount)
        }
        if counter == 3{
            lblDishFour.text = foodData[counter].foodName + " : " + String(foodData[counter].price)
            totalAmount = totalAmount + foodData[counter].price
            lblTotalPrice.text = " Total Price " + String(totalAmount)
        }
        if counter == 4{
            lblDishFive.text = foodData[counter].foodName + " : " + String(foodData[counter].price)
            totalAmount = totalAmount + foodData[counter].price
            lblTotalPrice.text = " Total Price " + String(totalAmount)
        }
        
    }
    
    @IBAction func btnNewNextDishClicked(_ sender: Any) {
        if counter != 5{
            imgFood.image = foodData[counter].foodImg
            lblFoodName.text = foodData[counter].foodName
       //     lblTotalPrice.text = " Total Price " +  String(foodData[counter].price)
            counter += 1
        }
        else{
            counter = 0
        }
        
        
    }
}
