//
//  MoreFunctionalitiesEnum.swift
//  Bank-app
//
//  Created by Maria Tupich on 28/12/23.
//

import UIKit

enum MoreFunctionalitiesEnum: CaseIterable {
    case personalLoan
    case vehicleFinancing
    case propertyFinancing
    
    var icon: UIImage {
      switch self {
      case .personalLoan:
          return UIImage(named: "pig-icon") ?? UIImage()
      case .vehicleFinancing:
          return UIImage(named: "car-icon") ?? UIImage()
      case .propertyFinancing:
          return UIImage(named: "car-icon") ?? UIImage()
      }
    }
    
    var title: String {
        switch self {
        case .personalLoan:
            return "Empréstimo Pessoal"
        case .vehicleFinancing:
            return "Financiamento de veículos"
        case .propertyFinancing:
            return "Financiamento de imóveis"
        }
    }
    
    var subtitle: String {
        switch self {
        case .personalLoan:
            return "Com taxas transparentes e parcelas que cabem no seu bolso. Reorganize suas finanças!"
        case .vehicleFinancing:
            return "Contratação de financiamento 100% digital, parcelas fixas e até 5 anos para pagar."
        case .propertyFinancing:
            return "Contratação de financiamento 100% digital, parcelas fixas e até 5 anos para pagar."
        }
    }
}




 
