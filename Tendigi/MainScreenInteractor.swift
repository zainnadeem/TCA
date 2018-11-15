//
//  MainScreenInteractor.swift
//  Tendigi
//
//  Created by Zain N. on 11/15/18.
//  Copyright (c) 2018 Mapfit. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MainScreenBusinessLogic
{
  func fetchJSON()
}

protocol MainScreenDataStore
{
  //var name: String { get set }
}

class MainScreenInteractor: MainScreenBusinessLogic, MainScreenDataStore
{
  var presenter: MainScreenPresentationLogic?
  var worker: MainScreenWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func fetchJSON()
  {
    worker = MainScreenWorker()
    
    worker?.fetchJSONFromTendigi(completion: { (response) in
        
        self.presenter?.formatJSON(response: response)
        
    })
    
    
  }
}