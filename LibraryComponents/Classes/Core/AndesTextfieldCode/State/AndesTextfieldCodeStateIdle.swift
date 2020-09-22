//
//  AndesTextfieldCodeStateIdle.swift
//  AndesUI
//
//  Created by Esteban Adrian Boffa on 22/09/2020.
//

import Foundation

struct AndesTextfieldCodeStateIdle: AndesTextfieldCodeStateProtocol {
    var labelTextColor: UIColor = AndesStyleSheetManager.styleSheet.textColorPrimary
    var helperTextColor: UIColor = AndesStyleSheetManager.styleSheet.textColorSecondary
    var helperSemibold: Bool = false
}
