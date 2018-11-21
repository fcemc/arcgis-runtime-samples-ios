// Copyright 2016 Esri.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

class ContentTableCell: UITableViewCell {

    @IBOutlet var stackView: UIStackView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var detailLabel: UILabel!
    
    var isExpanded: Bool = false {
        didSet {
            guard stackView.arrangedSubviews.contains(detailLabel) != isExpanded else {
                return
            }
            if isExpanded {
                stackView.addArrangedSubview(detailLabel)
            } else {
                detailLabel.removeFromSuperview()
            }
        }
    }
    
}
