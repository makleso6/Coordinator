import Foundation
import XCoordinator

class StartupPresenter: StartupPresenterInput {
  
  weak var view: StartupViewInput?
  var router: StrongRouter<StartupRoute>!
  func viewDidTriggerLoadEvent() {
    // Some delay logic
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: { [weak self] in
      guard let self = self else { return }
      let tab1 = Tab(title: "main", image: "person", selectedImage: "person.fill")
      let tab2 = Tab(title: "web1", image: "person", selectedImage: "person.fill")
      let tab3 = Tab(title: "web2", image: "person", selectedImage: "person.fill")
      self.router.trigger(.tabbar([tab1, tab2, tab3]))
      print(self)
    })
  }
}
