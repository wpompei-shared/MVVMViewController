# MVVMViewController
MVVMViewController base class

Base class to clean view controller when applying MVVM pattern using RxSwift.

For more details, please look at [UIViewController full initialization in MVVM](https://medium.com/@williampompei/uiviewcontroller-full-initialization-in-mvvm-89bef536258d)

# Usage

```swift
class ViewModel {
    
    let request = PublishSubject<String>()
    func askForSomething() {
        
    }
}

class ViewController: MVVMViewController<ViewModel> {
    
    
    let label = UILabel()
    override func viewDidLoad() {
        setupRx()
    }
    
    func setupRx() {
        // viewModel already defined in MVVMViewController superclass
        // viewModel type is ViewModel as specified in MVVMViewController<ViewModel> 
        viewModel.request 
        .bind(to: label.rx.text)
        .disposed(by: disposeBag) // dispose bag already defined in MVVMViewController superclass
    }
}
```

