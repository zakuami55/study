//
//  ViewController.swift
//  Weather
//
//  Created by Linh Nguyen Van on 5/17/20.
//  Copyright © 2020 Linh Nguyen Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout	 {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.tempLabel.text = "\(data[indexPath.row].current.temperature)"
        do {
            let image = try Data(contentsOf: URL.init(string: data[indexPath.row].current.weather_icons[0])!, options: Data.ReadingOptions.alwaysMapped)
            cell.imageIcon.image = UIImage(data: image)
        } catch  {
            print("Error")
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 110, height: 95)
    }
    
    
    
    var data: [WeatherModel] = []
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var weatherDescriptionsLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var feelslikeLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var sunhourLabel: UILabel!
    @IBOutlet weak var uvLabel: UILabel!
    @IBOutlet weak var avgtempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        URLRequest.request(urlString: "http://api.weatherstack.com/forecast?access_key=7f93c7b4911420ab1d7d1ea92dfcb0a6&query=Hanoi&hourly=1&interval=24&fbclid=IwAR3mM6pKoIpKSyUtgGTA0XRLy5mHC1Q8uIZWsOym52FsZx1pk8jMljyxJYs", completionHanle: { [weak self] result in
            guard let self = self else {return}
            self.locationNameLabel.text = result.location.name
            self.weatherDescriptionsLabel.text = result.current.weather_descriptions[0]
            self.temperatureLabel.text = "\(result.current.temperature)"
            self.humidityLabel.text = "\(result.current.humidity)" + " %"
            self.windSpeedLabel.text = "\(result.current.wind_speed)" + " km/h"
            self.feelslikeLabel.text = "\(result.current.feelslike)"
            self.uvLabel.text = "\(result.current.uv_index)"
            self.pressureLabel.text = "\(result.current.pressure)" + " hPa"

//            self.minTempLabel.text = "\(result.forecast.day.mintemp)"
            self.data.append(result)
            self.collectionView.reloadData()
        })
        // Do any additional setup after loading the view.
    }


}

