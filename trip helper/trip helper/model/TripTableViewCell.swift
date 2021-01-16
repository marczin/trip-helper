//
//  TripTableViewCell.swift
//  trip helper
//
//  Created by Marcin Rosół on 15/01/2021.
//

import UIKit

class TripTableViewCell: UITableViewCell {
    
    // MARK: - declarations
    
    var data: Trip? {
        didSet {
            title.text = data?.title
        }
    }
    
    private let title: UILabel = {
           let title = UILabel()
           title.font = title.font.withSize(30)
           return title
       }()
    
    // MARK: - initial

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        doLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }

    // MARK: - functions
    func doLayout() {
        selectionStyle = .none
        addSubview(title)
        title.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(16)
            make.leading.equalToSuperview().offset(16)
            make.bottom.equalToSuperview().offset(-16)
        }
    }

}
