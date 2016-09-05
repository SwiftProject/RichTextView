//
//  RichTextViewViewController.swift
//  RichTextView
//
//  Created by QingMingZhang on 16/9/5.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

class RichTextViewViewController: UIViewController {
    
    // MARK: - Variable
    var attriStr: NSMutableAttributedString = NSMutableAttributedString()
    
    let str1 = "Life isn’t always beautiful, but the struggles make you stronger, the changes make you wiser."
    let str2 = "生活不一定是一直美好的，但是那些挣扎可以让你变得更坚强，那些改变可以让你变得更有智慧。"
    let str3 = "早安！星期一！"
    let str4 = "输入错误的删除线"
    
    

    // MARK: - UIStoryboard
    
    @IBOutlet weak var lblRich: UILabel!

    
    // MARK: - 生命周期
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.configure()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configure() -> Void {
        attriStr.mutableString.appendString(str1)
        attriStr.mutableString.appendString(str2)
        attriStr.mutableString.appendString(str3)
        attriStr.mutableString.appendString(str4)
        
        
        attriStr.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: NSMakeRange(0, str1.characters.count))
        
        
        attriStr.addAttribute(NSUnderlineStyleAttributeName, value: (NSUnderlineStyle.StyleDouble.rawValue), range: NSMakeRange(str1.characters.count, str2.characters.count))
        
        
        attriStr.addAttribute(NSFontAttributeName, value: UIFont.boldSystemFontOfSize(20.0), range: NSMakeRange(str1.characters.count + str2.characters.count, str3.characters.count))
        
        lblRich.attributedText = attriStr
        print(lblRich.frame.size.height)
        
        let someFrame = CGRectZero
        
        let textContainer: NSTextContainer = NSTextContainer(size: lblRich.frame.size)
        let bezierPath = UIBezierPath(rect: someFrame)
//        lblRich
//        let s = NSString()
        print(attriStr)
        let size = CGSizeMake(kScreenWidth - 15.0 * 2, 1000)
        let frame = attriStr.boundingRectWithSize(size, options: [.UsesLineFragmentOrigin, .UsesFontLeading], context: nil)
        
        print(frame.size)
        
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
