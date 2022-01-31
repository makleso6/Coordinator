import Foundation

protocol WebApplicationPresenterInput: AnyObject {
  func viewDidTriggerLoadEvent()
  func push()
}

protocol WebApplicationViewInput: AnyObject {
  
}

