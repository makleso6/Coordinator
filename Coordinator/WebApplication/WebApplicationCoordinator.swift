import Foundation
import XCoordinator

class WebApplicationCoordinator: NavigationCoordinator<MainRoute> {
  
  override func prepareTransition(for route: MainRoute) -> NavigationTransition {
    switch route {
    case .webApplication:
      return .push(WebApplicationModuleFactory().module.view, animation: nil)
    case .webView:
      return .none()
    case .scanner:
      return .none()
    case .mosaic:
      return .none()
    }
  }
  
}
