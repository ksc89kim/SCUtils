//
//  UIAlertController+Base.swift
//  
//
//  Created by kim sunchul on 2022/05/30.
//

#if canImport(UIKit)

import UIKit

public extension UIAlertController {

  func show(target: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
    target.present(self, animated: animated, completion: completion)
  }

  func addActions(_ actions: UIAlertAction...) -> Self {
    guard actions.count > 0 else { return self }
    actions.forEach { self.addAction($0) }
    return self
  }

  @discardableResult
  func addActions(_ actions: [UIAlertAction]) -> Self {
    guard actions.count > 0 else { return self }
    actions.forEach { self.addAction($0) }
    return self
  }

  @discardableResult
  func addAction(
    title: String,
    style: UIAlertAction.Style = .default,
    isEnabled: Bool = true,
    handler: ((UIAlertAction) -> Void)? = nil
  ) -> UIAlertAction {
    let action = UIAlertAction(title: title, style: style, handler: handler)
    action.isEnabled = isEnabled
    self.addAction(action)
    return action
  }

  func addTextField(
    text: String? = nil,
    placeholder: String? = nil,
    editingChangedTarget: Any?,
    editingChangedSelector: Selector?
  ) {
    self.addTextField { textField in
      textField.text = text
      textField.placeholder = placeholder
      if let target = editingChangedTarget, let selector = editingChangedSelector {
        textField.addTarget(target, action: selector, for: .editingChanged)
      }
    }
  }

}

#endif
