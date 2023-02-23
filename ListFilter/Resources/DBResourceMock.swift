//
//  DBResourceMock.swift
//  ListFilter
//
//  Created by Kaue Ludovico on 23/02/23.
//

import Foundation

class DBResourceMock {
    static let shared = DBResourceMock()
    
    func getCategories() -> [Categories]? {
        let categories = [
            Categories(title: "Ação", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Aventura", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Comédia", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Comédia e ação", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Comédia romantica", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Documentário", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Drama", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Fantasia", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Ficção Científica", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Guerra", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Mistério", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Musical", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Policial", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Romance", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Suspense", desc: "Lorem Ipsum is simply dummy text..."),
            Categories(title: "Terror", desc: "Lorem Ipsum is simply dummy text...")]
        return categories
    }
}
