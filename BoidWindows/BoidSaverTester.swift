//
//  BoidSaverTester.swift
//  BoidSaverTester
//
//  Created by Owen Wolff on 9/1/24.
//

import Foundation
import Cocoa

class BoidTestViewController: NSViewController {
    var boidScreenSaverView: BoidScreenSaverView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the screensaver view
        let screenRect = self.view.bounds
        boidScreenSaverView = BoidScreenSaverView(frame: screenRect, isPreview: false)
        
        if let boidScreenSaverView = boidScreenSaverView {
            boidScreenSaverView.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(boidScreenSaverView)

            // Pin the screensaver view to the edges of the window
            NSLayoutConstraint.activate([
                boidScreenSaverView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                boidScreenSaverView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                boidScreenSaverView.topAnchor.constraint(equalTo: self.view.topAnchor),
                boidScreenSaverView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ])
        }
    }
}
