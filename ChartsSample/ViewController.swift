//
//  ViewController.swift
//  ChartsSample
//
//  Created by PNX on 2023/01/09.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let tableView = UITableView()
    
    let cellData:[ChartType] = [.Charts,.HSStockChart,.gpbl_SwiftChart,.PHStockChartForSwift,.CHKLineChart]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    //============================================================
    // MARK: - UITableViewDelegate, UITableViewDataSource
    //============================================================
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cellData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData: ChartType = self.cellData[indexPath.row]
        
        /// 테이블뷰 세팅
        let cell: UITableViewCell = UITableViewCell()
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = cellData.rawValue
        cell.contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(20)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellData: ChartType = self.cellData[indexPath.row]
        switch cellData {
        case .Charts:
            let vc = ChartsViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case .HSStockChart:
            print(cellData.rawValue)
        case .gpbl_SwiftChart:
            print(cellData.rawValue)
        case .PHStockChartForSwift:
            print(cellData.rawValue)
        case .CHKLineChart:
            print(cellData.rawValue)
        }
    }
}

enum ChartType: String {
    case Charts
    case HSStockChart
    case gpbl_SwiftChart
    case PHStockChartForSwift
    case CHKLineChart
}
