//
//  MusicListVC.swift
//  SwappingScreens2
//
//  Created by Cody Condon on 2016-09-12.
//  Copyright © 2016 Cody Condon. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    let songTitle = "BACK TO BACK"
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }

    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
