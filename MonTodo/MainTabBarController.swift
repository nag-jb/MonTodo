//
//  MainTabBarController.swift
//  MonTodo
//
//  Created by Sallivan James on 2021/03/06.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var viewControllers = [UIViewController]()
        let firstViewController = UIStoryboard(name: "RegistrationViewController", bundle: nil).instantiateInitialViewController()
        firstViewController?.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        viewControllers.append(firstViewController!)
        
        let secondViewController = UIStoryboard(name: "ProfileViewController", bundle: nil).instantiateInitialViewController()
        secondViewController?.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        viewControllers.append(secondViewController!)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
