//
//  GetDataFromDB.swift
//  DuanZi
//
//  Created by xdw on 15/10/19.
//  Copyright © 2015年 xdw. All rights reserved.
//

import UIKit


class GetDataFromDB: NSObject {

  static  func getdata(index: Int) -> NSMutableArray{
        print(NSBundle.mainBundle())
        let pathStr = NSBundle.mainBundle().pathForResource("datajoke", ofType:"db")
        let dataBase = FMDatabase(path: pathStr)
        let result = NSMutableArray(capacity: 0)
        if !(dataBase.open())
        {
            print("db打开是失败")
            return result
        }
    
        let sql = "Select * From joke Where id >= \(index) AND id < \(index + 1000)"
        let rs:FMResultSet = dataBase.executeQuery(sql, withArgumentsInArray: nil)
        while rs.next()
        {
            let dataStr = rs.stringForColumn("content")
            result.addObject(dataStr)
            
        }
        dataBase.close()
        return result
    }
}
