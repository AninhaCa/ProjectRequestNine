//
//  MyCustomCellXIB.swift
//  ProjectRequestNine
//
//  Created by Ana Paula Silva de Sousa on 20/03/23.
//

import UIKit
import SDWebImage

class MyCustomCellXIB: UITableViewCell {

    @IBOutlet var labelPizza: UILabel!
    @IBOutlet var imagePizza: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupXIB(pizzaElement: PizzaElement?) {
        labelPizza.text = pizzaElement?.name
        let urlImage = URL(string: pizzaElement?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
    }
}
