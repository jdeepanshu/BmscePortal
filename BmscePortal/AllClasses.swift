//
//  AllClasses.swift
//  BmscePortal
//
//  Created by Deepanshu Jain on 13/03/15.
//  Copyright (c) 2015 Deepanshu Jain. All rights reserved.
//

import Foundation
import UIKit

class Academics : NSObject
{
    var semester: Int
    var cgpa: Float
    var sgpa: Float
    
    init(semester : Int, cgpa: Float, sgpa: Float)
    {
        self.semester = semester
        self.cgpa = cgpa;
        self.sgpa = sgpa;
        super.init();
    }
    
}

class Course : NSObject{
    var semester : Int
    var coursecode: String
    var coursename: String
    var credits: Int
    var grade: String
    var session: Int
    init(semester:Int, coursecode : String, coursename: String, credits: Int, grade: String, session: Int) {
        self.semester = semester
        self.coursecode = coursecode
        self.coursename = coursename
        self.credits = credits
        self.grade = grade
        self.session = session
        
        
    }
}
