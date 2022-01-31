import Foundation

class GenericModule<V, P, R> {
  var view: V
  var presenter: P
  var router: R
  
  init(_ view: V,
       _ presenter: P,
       _ router: R
  ) {
    self.view = view
    self.presenter = presenter
    self.router = router
  }
}
