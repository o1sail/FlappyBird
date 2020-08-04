//
//  ViewController.swift
//  FlappyBird
//
//  Created by MacBook Pro on 2020/07/28.
//  Copyright © 2020 7o1. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SKViewに型を変換する
        let skView = self.view as! SKView
        //FPS(画面が1秒間に何回更新されているか)を表示
        skView.showsFPS = true
        //ノード(それぞれのシーン上の画面を構成する要素)の数を表示
        skView.showsNodeCount = true
        //ビューと同じサイズでシーンを作成
        let scene = GameScene(size: skView.frame.size)
        //ビューにシーンを表示
        skView.presentScene(scene)
    }
    // ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }


}
