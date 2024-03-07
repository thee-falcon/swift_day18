//
//  DetailViewController.swift
//  project1
//
//  Created by Omar Makran on 4/3/2024.
//

import UIKit

class DetailViewController: UIViewController {
    // @IBOutlet: This attribute is used to tell Xcode that there's a connection between this line of code and Interface Builder.
    // imageView: This was the property name assigned to the UIImageView.
    // UIImageView: is responsible for viewing images – perfect!
    //  !: This means that that UIImageView may be there or it may not be there.
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var selectedPictureNumber = 0
    var totalPictures = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // title
        title = "Picture \(selectedPictureNumber + 1) of \(totalPictures)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    // both methods, This means "tell my parent data type that these methods were called."
    // it means that it passes the method on to UIViewController, which may do its own processing.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
