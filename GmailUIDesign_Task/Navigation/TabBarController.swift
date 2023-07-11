//
//  TabBarController.swift
//  GmailUIDesign_Task
//
//  Created by Микаэл Мартиросян on 10.07.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allBoxesViewController = AllBoxesViewController()
        let meetingViewController = MeetingViewController()
        
        viewControllers = [createViewController(rootViewController: allBoxesViewController,
                                                title: "",
                                                tabBarItemImage: UIImage(systemName: "person")!),
        
                           createViewController(rootViewController: meetingViewController,
                                                title: "Meetings",
                                                tabBarItemImage: UIImage(systemName: "star")!)]
    }
    
    private func createViewController(rootViewController: UIViewController, title: String, tabBarItemImage: UIImage) -> UIViewController {

        rootViewController.tabBarItem.image = tabBarItemImage
        
        return rootViewController

    }
}
