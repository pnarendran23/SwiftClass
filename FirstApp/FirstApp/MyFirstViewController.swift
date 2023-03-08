//
//  MyFirstViewController.swift
//  FirstApp
//
//  Created by PradheepNarendran on 07/03/23.
//

import UIKit

class MyFirstViewController: UIViewController {

  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    let timer = Timer.scheduledTimer(timeInterval: 6.0, target: self, selector: #selector(self.redirectMyApp), userInfo: nil, repeats: false)
  }
  
  @objc func redirectMyApp(){
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    let secondVC = storyBoard.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController
    UIApplication.shared.keyWindow?.rootViewController = secondVC
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
