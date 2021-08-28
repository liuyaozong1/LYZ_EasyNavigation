//
//  LYZTest2ViewController.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit

class LYZTest2ViewController: LYZEasyViewController {

    
    lazy var tableView = UITableView().apply {
        $0.delegate = self
        $0.dataSource = self
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.lyz_navTitle = "第二个"
        self.rightSecondBtn.setTitle("帮助", for: .normal)
        self.rightThirdBtn.setTitle("客服", for: .normal)
        self.rightFirstBtn.setTitle("设置", for: .normal)
        self.rightThirdBtn.click { btn in
            print("点击了客服")
        }
        
        self.rightFirstBtn.click { btn in
            print("点击了设置")
        }
        
        self.rightSecondBtn.click { btn in
            print("点击了帮助")
        }
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }


        self.lyz_navigationBar.alpha = 0
        self.tableView.addObserver(self, forKeyPath: "contentOffset", options: [.new,.old], context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {


        if let point = change?[NSKeyValueChangeKey(rawValue: "new")] as? CGPoint{
            print("change----\((47 + point.y) / 47 * 2)----\(point.y)")
            self.lyz_navigationBar.alpha = (point.y - 47 ) / 47 * 2

        }
    }
    override func clickBack() {
        print("禁止返回")
        navigationController?.popViewController(animated: true)
    }
    
    deinit {
        print("销毁了------")
        self.tableView.removeObserver(self, forKeyPath: "contentOffset")
    }

}

extension LYZTest2ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = "当前的数据是\(indexPath.row)"
        return cell
        
    }
    
    
}
