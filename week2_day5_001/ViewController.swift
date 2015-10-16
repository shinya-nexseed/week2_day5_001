//
//  ViewController.swift
//  week2_day5_001
//
//  Created by Shinya Hirai on 2015/10/16.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // println("viewDidLoad")
        // println("\(__FUNCTION__) : \(__LINE__)")
        
        // 特殊リテラル
        // println(__FUNCTION__)
        // println(__LINE__)
        
        println("\(__FUNCTION__) : \(__LINE__) name = ")
        
        
//        var cFlag = true
//        
//        if (!cFlag) {
//            println("正解")
//        } else {
//            println("不正解")
//        }
        
        // プロパティリスト
        //// iOSでのデータ永続化手法のひとつ
        //// plistファイルにデータを書き込んでおき、呼び出して変数化して使います。
        
        // plistを特定して変数に保持 (plistのRootをArray型から作成した場合)
        var filePath = NSBundle.mainBundle().pathForResource("members", ofType: "plist")
        
        // 型を指定してplistのデータを取得
        var members:NSArray = NSArray(contentsOfFile: filePath!)!
        println(members[0])
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        // println("viewWillAppear")
        // println(__FUNCTION__)
        
        // printlnが存在するメソッドの名前と行数を変えす
        println("\(__FUNCTION__) : \(__LINE__)")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        // println("viewDidAppear")
        // println(__FUNCTION__)
        println("\(__FUNCTION__) : \(__LINE__)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnMenu(segue: UIStoryboardSegue) {
    }


}

