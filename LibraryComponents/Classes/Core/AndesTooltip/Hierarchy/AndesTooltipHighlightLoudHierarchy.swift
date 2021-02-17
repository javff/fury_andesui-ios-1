//
//  AndesTooltipHighlightLoudHierarchy.swift
//  AndesUI
//
//  Created by Juan Andres Vasquez Ferrer on 12-02-21.
//

import Foundation

struct AndesTooltipHighlightLoudHierarchy: AndesButtonHierarchyProtocol {

    public var idleColor: UIColor = AndesStyleSheetManager.styleSheet.accentColor600

    public var pressedColor: UIColor = AndesStyleSheetManager.styleSheet.accentColor300

    public var focusColor: UIColor = AndesStyleSheetManager.styleSheet.accentColor200

    public var disableColor: UIColor = UIColor.Andes.gray100

    public var fontColor: UIColor = AndesStyleSheetManager.styleSheet.textColorWhite

    var spinnerTintColor: UIColor = .clear

}
