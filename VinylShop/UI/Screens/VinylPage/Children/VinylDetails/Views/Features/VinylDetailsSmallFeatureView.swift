import Anchorage
import UIKit

class VinylDetailsSmallFeatureView: UIView {

    let valueLabel: UILabel = UILabel(frame: .zero)
        |> font(.nunito(.semibold), size: 13, color: .black000000)

    let subtitleLabel: UILabel = UILabel(frame: .zero)
        |> font(.nunito(.semibold), size: 12, color: .black000000, alpha: 0.5)

    init(title: String, subtitle: String) {
        super.init(frame: .zero)

        valueLabel.text = title
        subtitleLabel.text = subtitle

        addSubviews()
        setUpLayout()
    }

    // MARK: - Subviews

    private func addSubviews() {
        addSubview(valueLabel)
        addSubview(subtitleLabel)
    }

    // MARK: - Layout

    private func setUpLayout() {
        [valueLabel, subtitleLabel].forEach { view in
            view.setContentCompressionResistancePriority(.required, for: .vertical)
        }

        valueLabel.topAnchor == topAnchor
        valueLabel.leadingAnchor == leadingAnchor
        valueLabel.horizontalAnchors == horizontalAnchors

        subtitleLabel.topAnchor == valueLabel.bottomAnchor + 3
        subtitleLabel.bottomAnchor == bottomAnchor
        subtitleLabel.horizontalAnchors == horizontalAnchors
    }

    // MARK: - Required initializer

    required init?(coder _: NSCoder) { return nil }

}
