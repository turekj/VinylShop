import UIKit

class VinylPresenter {

    func present(vinyl: Vinyl, in cell: VinylCollectionCell) {
        cell.titleLabel.text = vinyl.title
        cell.bandLabel.text = vinyl.band
        cell.coverImageView.image = UIImage(named: vinyl.image)
    }

}
