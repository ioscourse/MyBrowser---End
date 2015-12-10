//
//  Hour of Code
//  Rock Valley College
//  Teacher: Professor Chuck Konkol
//
//  ViewController.swift
//
//  MyBrowser
//
//  1)Type your fullname in between [   ]
//
//  Created by: [   ] on 2015-12-12.

import UIKit

class ViewController: UIViewController {
    
// Create Outlets. Use the [Control] key + drag with mouse objects to code.

// 2) Create Outlet for UISearchBar and name it SearchBar
    @IBOutlet weak var SearchBar: UISearchBar!
    
// 3) Create Outlet for UIWebView and name it webview
    @IBOutlet weak var webview: UIWebView!
    
// 4) Create function for SearchBar. See Handout
    func searchBarSearchButtonClicked(SearchBar: UISearchBar){
        SearchBar.resignFirstResponder()
        let url = NSURL(string: "http://\(SearchBar.text!)")
        let request = NSURLRequest(URL: url!)
        webview.loadRequest(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
// 5) Type in the rest of the http:// with your favorite website. Example: http://rockvalleycollege.edu
        let url = NSURL(string: "http://rvchourofcode.weebly.com/")
        let request = NSURLRequest(URL: url!)
        webview.loadRequest(request)
    }
    
    
// 6) Run App: Product > Run or [Commandd] + R
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

