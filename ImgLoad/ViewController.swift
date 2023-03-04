//
//  ViewController.swift
//  ImgLoad
//
//  Created by changhyen yun on 2023/03/04.
//

import UIKit

extension UIImageView {
    func load (url: URL)
    {
        DispatchQueue.global().async {
            [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data){
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

class ViewController: UIViewController {
    
 
    
    @IBOutlet var imgView1: UIImageView!
    
    @IBOutlet var imgView2: UIImageView!
    
    @IBOutlet var imgView3: UIImageView!
    
    @IBOutlet var imgView4: UIImageView!
    
    @IBOutlet var imgView5: UIImageView!
    
    let url1 = URL(string: "https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=11288734&filePath=L2Rpc2sxL25ld2RhdGEvMjAxNS8wMi9DTFM2OS9OVVJJXzAwMV8wMjIwX251cmltZWRpYV8yMDE1MTIwMw==&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10006")
    
    let url2 = URL(string: "https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=11095352&filePath=L2Rpc2sxL25ld2RhdGEvMjAxNC8yMS9DTFM2L2RpZ2lfMTEwOTUzNTJfMDEyMDE0MTExMTA3&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10006")
    
    let url3 = URL(string: "https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=13333393&filePath=L2Rpc2sxL25ld2RhdGEvMjAyMy8yMS9DTFMxMDAwNC80ZTNmYzc3ZC1iZGYxLTRmOTEtYmVlMS0yOGRkYmVlN2ZlODc=&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10004")
    
    let url4 = URL(string: "https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=13333443&filePath=L2Rpc2sxL25ld2RhdGEvMjAyMy8yMS9DTFMxMDAwNC85YjdjNTVhZS1lZWIzLTRjMTEtOGU1OS0wMzk4MzhjOTA0Y2Q=&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10004")
    
    let url5 = URL(string: "https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=13333387&filePath=L2Rpc2sxL25ld2RhdGEvMjAyMi8yMS9DTFMxMDAwNC9mOTFkYTAwZC00NmUyLTQ3ZDQtYjkwNS0xZmE1OTU4ZGI1MDM=&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10004")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func imgLoadBtn1(_ sender: Any) {
        imgView1.load(url: url1!);
      
    }
    
    @IBAction func imgLoadBtn2(_ sender: Any) {
        imgView2.load(url: url2!);
    }
    
    @IBAction func imgLoadBtn3(_ sender: Any) {
        imgView3.load(url: url3!);

    }
    
    @IBAction func imgLoadBtn4(_ sender: Any) {
        imgView4.load(url: url4!);

    }
    
    @IBAction func imgLoadBtn5(_ sender: Any) {
        imgView5.load(url: url5!);
    }
    
    @IBAction func imgAllLoadBtn(_ sender: Any) {

        imgView1.load(url: url1!);
        imgView2.load(url: url2!);
        imgView3.load(url: url3!);
        imgView4.load(url: url4!);
        imgView5.load(url: url5!);
    }
    
}

