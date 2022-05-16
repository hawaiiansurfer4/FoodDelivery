//
//  ContentView.swift
//  FoodDelivery
//
//  Created by Sean Murphy on 5/16/22.
//

import SwiftUI

class FoodController: UICollectionViewController {
    
    init() {
        let layout = UICollectionViewFlowLayout()
        super.init(collectionViewLayout: layout)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    private let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        navigationItem.title = "Food Delivery"
        
        collectionView.register(UICollectionView.self, forCellWithReuseIdentifier: cellId)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Container().edgesIgnoringSafeArea(.all)
    }
    
    struct Container: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            UINavigationController(rootViewController: FoodController())
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
        
        typealias UIViewControllerType = UIViewController
    }
}
