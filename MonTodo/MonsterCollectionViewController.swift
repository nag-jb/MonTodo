//
//  MonsterCollectionViewController.swift
//  MonTodo
//
//  Created by Sallivan James on 2021/03/01.
//

import UIKit

private let reuseIdentifier = "Cell"

class MonsterCollectionViewController: UICollectionViewController {
    
    //コレクションに表示するデータ
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //セルの詳細なレイアウト設定
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        //セルのサイズ
        flowLayout.itemSize = CGSize(width: 100.0, height: 100.0)
        //縦横のスペース
        flowLayout.minimumLineSpacing = 10.0
        flowLayout.minimumInteritemSpacing = 12.0
        //スクロールの方法
        flowLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        //上で設定した内容を反映させる
        self.collectionView.collectionViewLayout = flowLayout
        //背景色を設定
        flowLayout.collectionView?.backgroundColor = UIColor.lightGray
        

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "monsterTask", for: indexPath)
        cell.backgroundColor = UIColor.black
        
        let label = cell.contentView.viewWithTag(1) as! UILabel
        label.text = items[indexPath.row]
        label.textColor = UIColor.red
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
}
