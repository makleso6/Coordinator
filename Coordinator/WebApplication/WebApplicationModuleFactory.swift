import Foundation
import UIKit

class WebApplicationModuleFactory {
  
  var module: GenericModule<WebApplicationViewController, WebApplicationPresenter, WebApplicationCoordinator> {
    let presenter = WebApplicationPresenter()
    let view = WebApplicationViewController(presenter: presenter)
    presenter.view = view
    let coordinator = WebApplicationCoordinator(root: view)
    presenter.router = coordinator.strongRouter
    return GenericModule(view, presenter, coordinator)
  }
}
