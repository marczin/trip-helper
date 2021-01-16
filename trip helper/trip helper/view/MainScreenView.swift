//
//  MainScreenView.swift
//  trip helper
//
//  Created by Marcin Rosół on 14/01/2021.
//

import SnapKit
import UIKit

class MainScreenView: UIView {

    // MARK: - declarations
    let tripTable = UITableView()
    
    // MARK: - initial
    
    init() {
        super.init(frame: .zero)
        doLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - functions
    
    private func doLayout(){
        backgroundColor = .white
        addSubview(tripTable)
        tripTable.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
        }
    }
}
