//
//  RatingViewController.swift
//  ProjectRequestNine
//
//  Created by Ana Paula Silva de Sousa on 20/03/23.
//

import UIKit

class RatingViewController: UIViewController {

    @IBOutlet var imageRating: UIImageView!
    @IBOutlet var labelName: UILabel!
    @IBOutlet var labelRating: UILabel!
    @IBOutlet var buttonBack: UIButton!
    
    var ratingPizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "AVALIAÇÃO CLIENTE"
        labelRating.text = "Para nossos clientes, a pizza \(ratingPizza?.name ?? "") esta na posiçao \(ratingPizza?.rating ?? 0) /5 - de aprovação"
        let urlImage = URL(string: ratingPizza?.imageURL ?? "")
        imageRating.sd_setImage(with: urlImage)
    }
    
    @IBAction func back(_ sender: Any) {
        buttonBack.backgroundColor = .brown
        self.dismiss(animated: true)
    }
}
