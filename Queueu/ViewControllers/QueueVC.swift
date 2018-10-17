//
//  QueueVC.swift
//  Queueu
//
//  Created by Charlotte Ristiniemi on 2018-10-10.
//  Copyright © 2018 Charlotte Ristiniemi. All rights reserved.
//

import UIKit


struct staticVariable {
  static let TopPlayerTVCIdentifier = "TopPlayerTVCIdentifier"
  static let SongTVCIdentifier = "SongTVCIdentifier"
  static let NextSongTVCIdentifier = "NextSongTVCIdentifier"
}

class QueueVC: UIViewController, UITableViewDataSource, UITextFieldDelegate {

  @IBOutlet weak var navBar: UINavigationBar!
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let playerNib = UINib(nibName: "TopPlayerTVC", bundle: nil)
    tableView.register(playerNib, forCellReuseIdentifier: staticVariable.TopPlayerTVCIdentifier)
    
    let songNib = UINib(nibName: "SongTVC", bundle: nil)
    tableView.register(songNib, forCellReuseIdentifier: staticVariable.SongTVCIdentifier)
    
    let nextNib = UINib(nibName: "NextSongTVC", bundle: nil)
    tableView.register(nextNib, forCellReuseIdentifier: staticVariable.NextSongTVCIdentifier)
    
    tableView.rowHeight = UITableView.automaticDimension
    tableView.estimatedRowHeight = 315
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 3;
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return 1
    } else if section == 1 {
      return 1
    } else {
      return 10
    }
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    if indexPath.section == 0 {
      var cell:TopPlayerTVC? = (tableView.dequeueReusableCell(
        withIdentifier: staticVariable.TopPlayerTVCIdentifier) as? TopPlayerTVC)
      
      if cell == nil {
        cell = (UITableViewCell(style: .subtitle, reuseIdentifier: staticVariable.TopPlayerTVCIdentifier) as? TopPlayerTVC)
      }
      
      return cell!
    } else if indexPath.section == 1 {
      var cell:NextSongTVC? = (tableView.dequeueReusableCell(
        withIdentifier: staticVariable.NextSongTVCIdentifier) as? NextSongTVC)
      
      if cell == nil {
        cell = (UITableViewCell(style: .subtitle, reuseIdentifier: staticVariable.NextSongTVCIdentifier) as? NextSongTVC)
      }
      
      cell?.labelNext.text = "Next up"
      
      return cell!
    } else {
      var cell:SongTVC? = (tableView.dequeueReusableCell(
        withIdentifier: staticVariable.SongTVCIdentifier) as? SongTVC)
      
      if cell == nil {
        cell = (UITableViewCell(style: .subtitle, reuseIdentifier: staticVariable.SongTVCIdentifier) as? SongTVC)
      }
      
      cell?.labelSongTitle.text = "Freaking Out The Neighborhood"
      cell?.labelArtist.text = "Mac Demarco"
      let x : Int = indexPath.row + 1
      let number = String(x)
      cell?.labelQueueNumber.text = number
      
      return cell!
    }
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
