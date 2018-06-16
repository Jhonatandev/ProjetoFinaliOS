//
//  AuthorManage.swift
//  meusLivros
//
//  Created by Professor on 16/06/18.
//  Copyright © 2018 Joanantha. All rights reserved.
//

import CoreData
class AuthorManage{
    static let shared = AuthorManage()
    var author: [Author] = []
    
    func loadAuthor(with context: NSManagedObjectContext){
        let fetchRequest: NSFetchRequest<Author> = Author.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        do{
            author = try context.fetch(fetchRequest)
        }catch{
            print(error.localizedDescription)
        }
    }
    
    func deleteAuthor(index: Int, context: NSManagedObjectContext){
        let authors = author[index]
        context.delete(authors)
        do{try context.save()}catch{print(error.localizedDescription)}
    }
    
    private init(){
        
    }
}
