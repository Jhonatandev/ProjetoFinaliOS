//
//  AddEditViewController.swift
//  meusLivros
//
//  Created by Professor on 16/06/18.
//  Copyright © 2018 Joanantha. All rights reserved.
//

import UIKit

class AddEditViewController: UIViewController {

    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfAuthor: UITextField!
    @IBOutlet weak var dpBuyDate: UIDatePicker!
    @IBOutlet weak var btAddEdit: UIButton!
    @IBOutlet weak var btCover: UIButton!
    
    @IBOutlet weak var ivCover: UIImageView!
    
    
    var books: Books!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AddEditCover(_ sender: UIButton) {
    }
    
    @IBAction func AddEditBooks(_ sender: UIButton) {
        if books == nil{
            books = Books(context: context)
        }
        books.title = tfTitle.text
        books.buyDate = dpBuyDate.date
        do{
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
        
        navigationController?.popViewController(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
