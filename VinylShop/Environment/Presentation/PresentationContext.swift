import UIKit

struct PresentationContext {
    let id: PresentationContextID
    let factory: () -> UIViewController
    let animated: Bool
    let presentationStyle: UIModalPresentationStyle
    let transitionStyle: UIModalTransitionStyle
    let transitioner: UIViewControllerTransitioningDelegate

    init(id: PresentationContextID,
         factory: @escaping () -> UIViewController,
         animated: Bool,
         presentationStyle: UIModalPresentationStyle,
         transitionStyle: UIModalTransitionStyle,
         presentAnimator: UIViewControllerAnimatedTransitioning?,
         dismissAnimator: UIViewControllerAnimatedTransitioning?) {
        self.id = id
        self.factory = factory
        self.animated = animated
        self.presentationStyle = presentationStyle
        self.transitionStyle = transitionStyle
        self.transitioner = PresentationTransitioningDelegate(
            presentAnimator: presentAnimator,
            dismissAnimator: dismissAnimator
        )
    }
}
