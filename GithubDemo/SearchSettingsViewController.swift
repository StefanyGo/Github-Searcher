//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Jungyoon Yu on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit


class SearchSettingsViewController: UIViewController {

    weak var delegate: SettingsPresentingViewControllerDelegate?
    var settings: GithubRepoSearchSettings?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSlide(_ sender: Any) {
        let slider = sender as! UISlider
        settings!.minStars = Int(slider.value * 100000.0)
    }
    @IBAction func onSave(_ sender: Any) {
        self.delegate?.didSaveSettings(settings: settings!)
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func onCancel(_ sender: Any) {
        self.delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)
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
