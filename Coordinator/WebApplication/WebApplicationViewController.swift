import Foundation
import UIKit

class WebApplicationViewController: BaseViewController, WebApplicationViewInput {
  var presenter: WebApplicationPresenterInput
  init(presenter: WebApplicationPresenterInput) {
    self.presenter = presenter
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.viewDidTriggerLoadEvent()
    
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("push", for: .normal)
    view.addSubview(button)
    button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 16).isActive = true
    button.addTarget(self, action: #selector(push(_:)), for: .touchUpInside)
  }
  
  @objc
  func push(_ sender: Any) {
    presenter.push()
  }
}
