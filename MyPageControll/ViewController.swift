//
//  ViewController.swift
//  MyPageControll
//
//  Created by 野澤拓己 on 2020/08/22.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    
    private let pageControl: UIPageControl = {
       
        let pageControl = UIPageControl()
        
        pageControl.numberOfPages = 5
        
        pageControl.backgroundColor = .systemBlue
        
        return pageControl
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.backgroundColor = .red
        
        view.addSubview(scrollView)
        view.addSubview(pageControl)
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height - 100)
        
        pageControl.frame = CGRect(x: 10, y: view.frame.size.height - 100, width: view.frame.size.width - 20, height: 70)
        
        if scrollView.subviews.count == 2 {
            
            configureScrollView()
            
        }
        
    }
    
    private func configureScrollView() {
        
        scrollView.contentSize = CGSize(width: view.frame.size.width * 5, height: scrollView.frame.size.height)
        
        scrollView.isPagingEnabled = true
        
        let colors: [UIColor] = [
        .systemGreen,
        .systemRed,
        .systemPink,
        .systemPurple,
        .systemOrange
        ]
        
        for i in 0..<5 {
            
            let page = UIView(frame: CGRect(x: CGFloat(i) * view.frame.size.width,
                                            y: 0,
                                            width: scrollView.frame.size.width,
                                            height: scrollView.frame.size.height))
            
            page.backgroundColor = colors[i]
            
            scrollView.addSubview(page)
            
            
        }
        
        
    }


}

