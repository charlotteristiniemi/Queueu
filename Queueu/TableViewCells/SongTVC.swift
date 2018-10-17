//
//  SongTVC.swift
//  Queueu
//
//  Created by Charlotte Ristiniemi on 2018-10-17.
//  Copyright © 2018 Charlotte Ristiniemi. All rights reserved.
//

import UIKit

class SongTVC: UITableViewCell {

  @IBOutlet weak var labelArtist: UILabel!
  @IBOutlet weak var labelSongTitle: UILabel!
  @IBOutlet weak var labelQueueNumber: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }
}
