import Foundation
import UIKit

class StartupModuleFactory {
  
  var module: GenericModule<StartupViewController, StartupPresenter, StartupCoordinator> {
    let presenter = StartupPresenter()
    let view = StartupViewController(presenter: presenter)
    presenter.view = view
    let coordinator = StartupCoordinator(rootViewController: view)
    presenter.router = coordinator.strongRouter
    return GenericModule(view, presenter, coordinator)
  }
}
