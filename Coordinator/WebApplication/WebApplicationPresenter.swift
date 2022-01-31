import XCoordinator

class WebApplicationPresenter: WebApplicationPresenterInput {
  
  weak var view: WebApplicationViewInput?
  var router: StrongRouter<MainRoute>!
  func viewDidTriggerLoadEvent() {
    
  }
  
  func push() {
    router.trigger(.webApplication(""))
  }
  
}
