//
//  BankFunctionalitiesEnum.swift
//  Bank-app
//
//  Created by Maria Tupich on 28/12/23.
//

import UIKit

enum BankFunctionalitiesEnum: CaseIterable {
    case pix
    case payment
    case refund
    case transfer
    
    var icon: UIImage {
      switch self {
      case .pix:
          return UIImage(named: "pix-icon") ?? UIImage()
      case .payment:
          return UIImage(named: "payment-icon") ?? UIImage()
      case .refund:
          return UIImage(named: "deposit-icon") ?? UIImage()
      case .transfer:
          return UIImage(named: "transfer-icon") ?? UIImage()
      }
    }
    
    var name: String {
        switch self {
        case .pix:
            return "Pix"
        case .payment:
            return "Pagar"
        case .refund:
            return "Depositar"
        case .transfer:
            return "Transferir"
        }
    }
}




 
