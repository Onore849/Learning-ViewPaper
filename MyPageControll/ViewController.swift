//
//  ViewController.swift
//  MyPageControll
//
//  Created by 野澤拓己 on 2020/08/22.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let pageControl: UIPageControl = {
       
        let pageControl = UIPageControl()
        
        pageControl.numberOfPages = 5
        
        pageControl.backgroundColor = .systemBlue
        
        return pageControl
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(pageControl)
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pageControl.frame = CGRect(x: 10, y: view.frame.size.height - 100, width: view.frame.size.width - 20, height: 70)
        
    }


}

