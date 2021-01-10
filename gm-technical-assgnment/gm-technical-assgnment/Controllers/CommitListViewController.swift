//
//  ViewController.swift
//  gm-technical-assgnment
//
//  Created by Projects on 1/9/21.
//

import UIKit

class CommitListViewController: BaseViewController<CommitListView> {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        baseView.collectionView.dataSource = self
        
    }
}

extension CommitListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = baseView.collectionView.dequeueReusableCell(withReuseIdentifier: CommitCell.cellIdentifier, for: indexPath) as! CommitCell
        cell.backgroundColor = UIColor.blue
        return cell
    }
}


