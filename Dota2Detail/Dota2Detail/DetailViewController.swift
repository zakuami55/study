//
//  DetailViewController.swift
//  Dota2Detail
//
//  Created by Linh Nguyen Van on 5/15/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var giatri: HeroModel? = nil
    var vitri: Int?
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var idHeroLabel: UILabel!
    @IBOutlet weak var nameHeroLabel: UILabel!
    @IBOutlet weak var attrLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.idHeroLabel.text = "\(self.giatri!.id)"
        self.nameHeroLabel.text = self.giatri!.localized_name
        self.attrLabel.text = self.giatri!.primary_attr
        self.typeLabel.text = self.giatri!.attack_type
        let image = try! Data(contentsOf: URL.init(string:
        "https://api.opendota.com" + self.giatri!.img)!, options: 
        Data.ReadingOptions.alwaysMapped)
        self.imageHero.image = UIImage(data: image)
    }
}
