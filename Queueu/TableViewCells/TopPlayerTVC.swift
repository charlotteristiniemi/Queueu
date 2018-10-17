//
//  TopPlayerTVC.swift
//  Queueu
//
//  Created by Charlotte Ristiniemi on 2018-10-17.
//  Copyright © 2018 Charlotte Ristiniemi. All rights reserved.
//

import UIKit

class TopPlayerTVC: UITableViewCell {

  // MARK: Outlet Properties
  @IBOutlet weak var imgAlbumCover: UIImageView!
  @IBOutlet weak var labelSongTitle: UILabel!
  @IBOutlet weak var labelArtist: UILabel!
  @IBOutlet weak var labelTimePlayed: UILabel!
  @IBOutlet weak var labelTimeLeft: UILabel!
  @IBOutlet weak var viewTimeBar: UIView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }
}
