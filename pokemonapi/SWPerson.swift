//
//  SWPerson.swift
//  pokemonapi
//
//  Created by pranshu singh on 28/06/16.
//  Copyright © 2016 appsierra. All rights reserved.
//

import Foundation

class swperson{
    
    private var _name: String!
    private var _height: String!
    private var _birthyear: String!
    private var _haircolor: String!
    
    
    var name: String{
        get{
        return _name
        }
    }
    
    var height: String{
        get{
            return _height
        }
    }
    
    var birthyear: String{
        get{
            return _birthyear
        }
    }
    
    var haircolor: String
        {
        get{
            return _haircolor
        }
    }
    
    init(name:String,height:String,birthyear:String,haircolor:String)
    {
        _name=name
        _height=height
        _birthyear=birthyear
        _haircolor=haircolor
    }
    
}
