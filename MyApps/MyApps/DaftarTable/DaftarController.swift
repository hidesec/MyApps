//
//  DaftarController.swift
//  MyApps
//
//  Created by sarkom3 on 13/04/19.
//  Copyright © 2019 sarkom3. All rights reserved.
//

import UIKit

class DaftarController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfTables.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let daftar = tableView.dequeueReusableCell(withIdentifier: "daftar", for: indexPath)
        
        daftar.textLabel?.text = arrayOfTables[indexPath.row]
        return daftar
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let Jakarta = self.storyboard?.instantiateViewController(withIdentifier: "Jakarta") as! Jakarta
            self.navigationController?.pushViewController(Jakarta, animated: true)
        case 1:
            let Bandung = self.storyboard?.instantiateViewController(withIdentifier: "Bandung") as! Bandung
            self.navigationController?.pushViewController(Bandung, animated: true)
        case 2:
            let Malang = self.storyboard?.instantiateViewController(withIdentifier: "Malang") as! Malang
            self.navigationController?.pushViewController(Malang, animated: true)
        case 3:
            let Pontianak = self.storyboard?.instantiateViewController(withIdentifier: "Pontianak") as! Pontianak
            self.navigationController?.pushViewController(Pontianak, animated: true)
        case 4:
            let Tangerang = self.storyboard?.instantiateViewController(withIdentifier: "Tangerang") as! Tangerang
            self.navigationController?.pushViewController(Tangerang, animated: true)
        case 5:
            let Bekasi = self.storyboard?.instantiateViewController(withIdentifier: "Bekasi") as! Bekasi
            self.navigationController?.pushViewController(Bekasi, animated: true)
        case 6:
            let Jambi = self.storyboard?.instantiateViewController(withIdentifier: "Jambi") as! Jambi
            self.navigationController?.pushViewController(Jambi, animated: true)
        case 7:
            let Papua = self.storyboard?.instantiateViewController(withIdentifier: "Papua") as! Papua
            self.navigationController?.pushViewController(Papua, animated: true)
        default:
            print("NO ITEM!")
        }
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfTables = ["Jakarta", "Bandung", "Malang", "Pontianak", "Tangerang", "Bekasi", "Jambi", "Papua"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
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
