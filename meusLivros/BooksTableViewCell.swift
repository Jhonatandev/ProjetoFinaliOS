//
//  BooksTableViewCell.swift
//  meusLivros
//
//  Created by Professor on 16/06/18.
//  Copyright © 2018 Joanantha. All rights reserved.
//

import UIKit

class BooksTableViewCell: UITableViewCell {
    @IBOutlet weak var ivCover: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbAuthor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func prepare(with book: Books){
        lbTitle.text = book.title ?? ""
        lbAuthor.text = book.author?.name ?? ""
        if let image = book.cover as? UIImage {
            ivCover.image = image
        }else{
            ivCover.image = UIImage(named: "noCover")
        }
    }
}
