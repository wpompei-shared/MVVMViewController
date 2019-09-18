import Foundation
import UIKit

import RxSwift

protocol MVVMViewControllerProtocol: class {
    associatedtype T
    
    init(viewModel: T)
}

class MVVMViewController<U>: UIViewController, MVVMViewControllerProtocol {
    
    typealias T = U
    let viewModel: T
    let disposeBag = DisposeBag()
    
    convenience init() {
        fatalError("init() has not been implemented")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(viewModel: T) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
}
