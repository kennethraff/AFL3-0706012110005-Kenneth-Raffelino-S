//
//  PageViewController.swift
//  AFL3-0706012110005-Kenneth Raffelino S
//
//  Created by MacBook Pro on 18/04/23.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

    func makeUIViewController(context: Context) -> UIPageViewController {
           let pageViewController = UIPageViewController(
               transitionStyle: .scroll,
               navigationOrientation: .horizontal)

           return pageViewController
       }
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
           pageViewController.setViewControllers(
               [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
       }
}
