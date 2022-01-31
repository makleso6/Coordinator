import Foundation
import XCoordinator

enum MainRoute: Route {
    case webApplication(String)
    case webView(String)
    case scanner
    case mosaic(String)
}

class MainTabBarCordinator: TabBarCoordinator<MainRoute> {
    override func prepareTransition(for route: MainRoute) -> TabBarTransition {
        
        return .none()
    }
}
