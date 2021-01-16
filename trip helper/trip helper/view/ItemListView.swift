//
//  ItemListView.swift
//  trip helper
//
//  Created by Marcin Rosół on 16/01/2021.
//

import UIKit

class ItemListView: UIView {

    // MARK: - declarations
    let itemListTable = UITableView()
    
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
        addSubview(itemListTable)
        itemListTable.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
        }
    }

}
