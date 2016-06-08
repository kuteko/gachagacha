//
//  ResultViewController.swift
//  gachagacha
//
//  Created by 内山香 on 2016/06/07.
//  Copyright © 2016年 内山香. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //背景
    @IBOutlet var haikeiImgView: UIImageView!
    
    //モンスター表示
    @IBOutlet var monsterImgView: UIImageView!
    
    //モンスター画像保存する配列
    var monsterArray: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //0~9の間で乱数
        let num = Int(rand() % 9)
        
        //monsterArray配列に画像追加
        monsterArray = [UIImage(named: "monster001.png")!,
                    UIImage(named: "monster002.png")!,
                    UIImage(named: "monster003.png")!,
                    UIImage(named: "monster004.png")!,
                    UIImage(named: "monster005.png")!,
                    UIImage(named: "monster006.png")!,
                    UIImage(named: "monster007.png")!,
                    UIImage(named: "monster008.png")!,
                    UIImage(named: "monster009.png")!,
                    UIImage(named: "monster010.png")!]
        
        //モンスターランダム表示
        monsterImgView.image = monsterArray[num]
        
        if num == 9{
            haikeiImgView.image = UIImage(named: "bg_gold.png")
        }
        else if num > 6{
            haikeiImgView.image = UIImage(named: "bg_red.png")
        }
        else{
            haikeiImgView.image = UIImage(named: "bg_blue.png")
        }
        
        
        
    }
    
 
        override func viewDidAppear(animated: Bool){
            super.viewDidAppear(true)
        
            //変形させるキーパス指定
            let animation = CABasicAnimation(keyPath: "transform")
            
            //アニメーション開始時
            animation.fromValue = NSNumber(double: 0)
            
            //アニメーション終了時
            animation.toValue = NSNumber(double: 2 * M_PI) //M_PIは180度
            
            //Z軸を中心としたアニメーション
            animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
            
            //速さ指定
            animation.duration = 5
            
            //n回繰り返す
            animation.repeatCount = Float.infinity
            
            //レイヤー指定
            haikeiImgView.layer.addAnimation(animation, forKey: nil)
    }

    
    @IBAction func back(){
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
