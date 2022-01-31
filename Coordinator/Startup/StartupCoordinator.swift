import Foundation
import XCoordinator

struct Tab {
  let title: String
  let image: String
  let selectedImage: String
}

enum StartupRoute: Route {
  case tabbar([Tab])
  case onboarding
}

class StartupCoordinator: ViewCoordinator<StartupRoute> {
  override func prepareTransition(for route: StartupRoute) -> ViewTransition {
    switch route {
    case .tabbar(let tabs):
      let presentables = tabs.map({ tab -> Presentable in
        let web = WebApplicationModuleFactory().module
        if #available(iOS 13.0, *) {
          web.view.tabBarItem = .init(title: tab.title, image: .init(systemName: tab.image), selectedImage: .init(systemName: tab.selectedImage))
        }
        return web.router
      })
      let mainTabBarCordinator = MainTabBarCordinator(
        rootViewController: MainTabBarController(),
        tabs: presentables
      )
      return .embed(mainTabBarCordinator, in: rootViewController)
      
    case .onboarding:
      return .none()
    }
  }
  
  func handle(url: URL) {
    let tab1 = Tab(title: "main", image: "person", selectedImage: "person.fill")

    self.performTransition(deepLink(StartupRoute.tabbar([tab1]), MainRoute.scanner), with: .init(animated: true), completion: nil)
  }
}
