//
//  CollectionView+Extension.swift
//
//
//  Created by arjun on 04/01/22.
//

import UIKit

extension UICollectionView{
    open override func awakeFromNib() {
        super.awakeFromNib()
      //  self.semanticContentAttribute = Bundle.main.isArabicLanguage ? .forceRightToLeft : .forceLeftToRight
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(withClass name: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: String(describing: name), for: indexPath) as? T else {
            fatalError("Couldn't find UICollectionViewCell for \(String(describing: name))")
        }
        return cell
    }
    
    func register<T: UICollectionViewCell>(nib: UINib?, forCellWithClass name: T.Type) {
        register(nib, forCellWithReuseIdentifier: String(describing: name))
    }
    
    func register<T: UICollectionViewCell>(cellWithClass name: T.Type) {
        register(T.self, forCellWithReuseIdentifier: String(describing: name))
    }
    
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = UIColor.gray
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        //messageLabel.font(name: .bold, size: 18.0)
        messageLabel.sizeToFit()
        self.backgroundView = messageLabel
    }
    
    func restoreEmptyMessage() {
        self.backgroundView = nil
    }
    
    func animateCollection(isFromRight : Bool) {
        let cells = self.visibleCells
        let colWidth: CGFloat = self.bounds.size.width
        for i in cells {
            let cell: UICollectionViewCell = i
            if isFromRight{
                cell.transform = CGAffineTransform(translationX: colWidth, y: 0)
            }else{
                cell.transform = CGAffineTransform(translationX: -colWidth, y: 0)
            }
        }
        var index = 0
        for a in cells {
            let cell: UICollectionViewCell = a as UICollectionViewCell
            UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0);
            }, completion: nil)
            index += 1
        }
    }
    
    func getVisibleCellIndexPath() -> IndexPath? {
        var visibleRect = CGRect()
        
        visibleRect.origin = self.contentOffset
        visibleRect.size = self.bounds.size
        
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        
        guard let indexPath = self.indexPathForItem(at: visiblePoint) else { return nil }
        
        print(indexPath)
        
        return indexPath//self.colImages.indexPathsForVisibleItems.first?.item ?? 0
    }
}

extension UICollectionViewCell {
    open override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var reuseIdentifier : String{
        return String(describing: self)
    }
}

extension UICollectionViewFlowLayout {
//    open override var flipsHorizontallyInOppositeLayoutDirection: Bool {
//        return Bundle.main.isArabicLanguage
//    }
}

class DynamicCollectionView: UICollectionView {
    override func layoutSubviews() {
        super.layoutSubviews()
        if !__CGSizeEqualToSize(bounds.size, self.intrinsicContentSize) {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        var size = contentSize
        size.height += (contentInset.top + contentInset.bottom)
        size.width += (contentInset.left + contentInset.right)
        return size
    }
}



class SelfSizedTableView: UITableView {
    
    @IBInspectable var maxHeight: CGFloat = CGFloat.greatestFiniteMagnitude
    
    override var contentSize:CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
            //            self.isScrollEnabled = maxHeight < contentSize.height
        }
    }
    
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        let height = min(contentSize.height + contentInset.top + contentInset.bottom, maxHeight)
        return CGSize(width: contentSize.width, height: height)
    }
}


class TextField: UITextField {

    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 5)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        DispatchQueue.main.async {
            self.layer.cornerRadius = self.layer.frame.height / 2
        }
        
    }

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}


