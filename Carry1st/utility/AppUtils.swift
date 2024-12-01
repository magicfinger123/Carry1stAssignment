//
//  AppUtils.swift
//  Carry1st
//
//  Created by Michael Ossai on 29/11/2024.
//
import Foundation

func setAmountString (amountValue: Double, isoCodeStr: String) -> String {
    
    // let currencySymbolValue = Locale.availableIdentifiers.map(Locale.init).first { $0.currencyCode == isoCodeStr}?.currencySymbol
    
    let formatter = NumberFormatter()
    formatter.currencyCode = isoCodeStr
  //  formatter.currencySymbol = AppUtils.getCurrencySymbol(from: isoCodeStr)
    formatter.numberStyle = NumberFormatter.Style.currency
    
    if let formatterStr: String = formatter.string(from: NSNumber(value: amountValue))  {
        return formatterStr
    }else {
        return "0.0"
    }
}
