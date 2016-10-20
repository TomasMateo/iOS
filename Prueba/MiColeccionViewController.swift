//
//  CategoriasViewController.swift
//  Prueba
//
//  Created by Raul Huamani on 2/10/16.
//  Copyright © 2016 cibertec. All rights reserved.
//

import UIKit

class MiColeccionCategoriaViewController: UIViewController {

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



extension MiColeccionCategoriaViewController: UICollectionViewDataSource {
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 15
        default:
            return 15
        }
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            
            let item : MiCategoria
            
            item = collectionView.dequeueReusableCellWithReuseIdentifier("categoria", forIndexPath: indexPath) as! MiCategoria
            
            item.initItem()
            
            return item
            
        default:
            
            let item : MiCategoria
            
            item = collectionView.dequeueReusableCellWithReuseIdentifier("categoria", forIndexPath: indexPath) as! MiCategoria
            
            item.initItem()
            
            return item
            
        }
        
    }
    
    
}



extension MiColeccionCategoriaViewController: UICollectionViewDelegate{
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
}


extension MiColeccionCategoriaViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        // en caso de que el collection este pegado a todo el ancho de la pantalla
        //let w = self.view.frame.width
        
        let w = collectionView.frame.width
        
        let item_w = (w - 41)/3
        
        let item_h = item_w * 1.4
        
        return CGSize(width: item_w , height: item_h)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    
    
}

