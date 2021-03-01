//
//  ViewController.swift
//  MonTodo
//
//  Created by Sallivan James on 2021/02/26.
//

import UIKit

//データを表示するための格納箱
var todoQuest = [String]()
var todoGenre = [String]()
var todoLevel = [String]()
var todoDate = [String]()
var todoMemo = [String]()

class ViewController: UIViewController, UITableViewDataSource {
    
    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    //ToDoタスクを表示するための配列
    var todoArray = [String]()

    
//----------------------------------------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //テーブルビューのデータソースメソッドはViewControllerクラスに書くという宣言
        table.dataSource = self
        
        //カスタムセルを登録
        self.table.register(UINib(nibName: "TodoTableViewCell", bundle: nil), forCellReuseIdentifier: "questCell")
        configureTableView()
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        //NavigationBarを透明化
        super.viewWillAppear(animated)
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for : .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
    }
    
    
    
//----------------------------------------------------------------------------------------------------------------
    //セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 3
    }
    
    
    //ID付きのセルを取得し、セル付属のLabelやImageViewに値を代入
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "questCell", for: indexPath) as! TodoTableViewCell
        
        
        return cell
    }
    
    
    func configureTableView(){
        table.rowHeight = 70
    }
    
//    //ID付きのセルを取得し、セル付属のLabelやImageViewに値を代入
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
//        //変数を作成
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! reTableViewCell
//
//        cell.titleLabel.text = todoQuest[indexPath.row]
//        cell.titleLabel.text = todoGenre[indexPath.row]
//        cell.dateLabel.text = todoLevel[indexPath.row]
//        cell.dateLabel.text = todoDate[indexPath.row]
//
//        //変数の中身を作成、セルにToDo項目と日付を表示
//        //cell.textLabel?.text = todoTitle[indexPath.row] + todoDate[indexPath.row]
//
//        print("d")
//
//        return cell
//    }
    
    


}

