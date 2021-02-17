//
//  
//  AndesTooltip.swift
//  AndesUI
//
//  Created by Juan Andres Vasquez Ferrer on 19-01-21.
//
//

import Foundation

@objc public class AndesTooltip: UIView {
    internal var contentView: AndesTooltipView!

    let type: AndesTooltipType
    let title: String?
    let content: String
    let isDismissable: Bool

    public func show(in view: UIView, within superView: UIView, position: AndesTooltipPosition = .top) {
        self.contentView.show(in: view, within: superView, position: position)
    }

    public func dismiss() {
        self.contentView.dismiss()
    }

    // MARK: - Light variants
    public convenience init(
        lightStyle content: String,
        title: String? = nil,
        isDismissable: Bool = true
    ) {
        self.init(content: content, title: title, isDismissable: isDismissable, type: .light)
    }

    // MARK: - Dark style variants
    public convenience init(
        darkStyle content: String,
        title: String? = nil,
        isDismissable: Bool = true
    ) {
        self.init(content: content, title: title, isDismissable: isDismissable, type: .dark)
    }

    // MARK: - Highlight style variants
    public convenience init(
        highlightStyle content: String,
        title: String? = nil,
        isDismissable: Bool = true
    ) {
        self.init(content: content, title: title, isDismissable: isDismissable, type: .highlight)
    }

    private init(
        content: String,
        title: String?,
        isDismissable: Bool,
        type: AndesTooltipType) {

        self.content = content
        self.title = title
        self.isDismissable = isDismissable
        self.type = type
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .clear
        drawContentView(with: provideView())
    }

    private func drawContentView(with newView: AndesTooltipView) {
        self.contentView = newView
        addSubview(contentView)
        contentView.pinToSuperview()
    }

    /// Should return a view depending on which modifier is selected
    private func provideView() -> AndesTooltipView {
        let config = AndesTooltipViewConfigFactory.provideInternalConfig(tooltip: self)

        return AndesTooltipViewDefault(withConfig: config)
    }
}
