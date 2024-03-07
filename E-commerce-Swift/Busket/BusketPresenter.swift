//
//  BusketPresenter.swift
//  E-commerce-Swift
//
//  Created by Asim Seferli on 07.03.24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol BusketPresentationLogic
{
  func presentSomething(response: Busket.Something.Response)
}

class BusketPresenter: BusketPresentationLogic
{
  weak var viewController: BusketDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Busket.Something.Response)
  {
    let viewModel = Busket.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
