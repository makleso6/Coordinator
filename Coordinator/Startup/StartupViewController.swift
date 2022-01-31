import Foundation
import UIKit

class StartupViewController: BaseViewController, StartupViewInput {
  var presenter: StartupPresenterInput
  init(presenter: StartupPresenterInput) {
    self.presenter = presenter
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.viewDidTriggerLoadEvent()
  }
}

