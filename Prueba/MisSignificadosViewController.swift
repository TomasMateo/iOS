//
//  MiTablaSignificadoViewController.swift
//  Prueba
//
//  Created by Raul Huamani on 22/10/16.
//  Copyright © 2016 cibertec. All rights reserved.
//

import UIKit

class MisSignificadosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension MisSignificadosViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section
        {
        case 0:
            return "Significado1"
        case 1:
            return "Significado2"
        default:
            return "Significado3"
        }    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 3
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3;
            break;
        case 1:
            return 3;
            break;
        default:
            return 3; break;
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            
            let cell: MiSignificado
            
            cell = tableView.dequeueReusableCellWithIdentifier("significado", forIndexPath: indexPath) as! MiSignificado
            
            cell.initCell()
            
            return cell
            
        default:
            
            
            
            
            
            let cell: MiSignificado
            
            cell = tableView.dequeueReusableCellWithIdentifier("significado", forIndexPath: indexPath) as! MiSignificado
            
            cell.initCell()
            
            return cell
            
            
        }
        
    }
    
}



extension MisSignificadosViewController: UITableViewDelegate {
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
}
