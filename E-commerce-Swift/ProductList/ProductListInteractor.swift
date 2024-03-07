//
//  ProductListInteractor.swift
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

protocol ProductListBusinessLogic
{
  func doSomething(request: ProductList.Something.Request)
}

protocol ProductListDataStore
{
  //var name: String { get set }
}

class ProductListInteractor: ProductListBusinessLogic, ProductListDataStore
{
  var presenter: ProductListPresentationLogic?
  var worker: ProductListWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: ProductList.Something.Request)
  {
    worker = ProductListWorker()
    worker?.doSomeWork()
    
    let response = ProductList.Something.Response()
    presenter?.presentSomething(response: response)
  }
}