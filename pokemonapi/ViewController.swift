//
//  ViewController.swift
//  pokemonapi
//
//  Created by pranshu singh on 28/06/16.
//  Copyright © 2016 appsierra. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib. 
        
        
        let urlstring = "http://swapi.co/api/people/1/"
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: urlstring)!
        
        session.dataTaskWithURL(url)
        {
            (data: NSData?,response: NSURLResponse?,error:NSError?) -> Void in
            
            if let responseData = data
            {
                do{
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    
                    if let dict = json as? Dictionary<String,AnyObject>{
                    
                    if let name = dict["name"] as? String,let height = dict["height"] as? String,let birth = dict["birth_year"] as? String ,let hair = dict["hair_color"] as? String{
                        
                        let person = swperson(name: name, height: height, birthyear: birth, haircolor: hair)
                        
                        print(person.name)
                        
                        print(person.height)
                        
                        print(person.birthyear)
                        
                        print(person.haircolor)
                    }
                    }
                   
                }
                catch{
                    print("could not serialize")
                }
            }
        }.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

