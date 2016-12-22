//
//  ViewController.swift
//  NSCollectionView
//
//  Created by sycf_ios on 2016/12/21.
//  Copyright © 2016年 sycf_ios. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
   
    @IBOutlet weak var collectionView: NSCollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.allowsMultipleSelection = true
        collectionView?.register(NSNib.init(nibNamed: "SBItem", bundle: nil), forItemWithIdentifier: "SBItem")
        
    }
   
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}
extension ViewController: NSCollectionViewDelegate, NSCollectionViewDataSource,NSCollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func numberOfSections(in collectionView: NSCollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: "SBItem", for: indexPath) as? SBItem
        item?.imgView.image = NSImage(named: indexPath.item.description)
        print(indexPath.item.description)
        item?.lab.stringValue = " NSTableRowView and custom NSView based NSTableview ? I initially started out with a view based NSTableView, but I soon noticed that I would have to handle the selection myself. I could not pull that off, so I went on to use NSTableRowView, which, strangely, does not call the initi"
        return item!
        
    }

}
