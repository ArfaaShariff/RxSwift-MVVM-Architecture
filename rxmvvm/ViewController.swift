//
//  ViewController.swift
//  rxmvvm
//
//  Created by Daniel Christopher on 2/5/17.
//
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var sampleText: UITextView!
    let disposeBag = DisposeBag()
    let model = SampleModel()

    
    func displayText(){
        //subscribing to Observable
        model.getPosts()
            .subscribe(onNext: { (posts: [Post]) in
                //set the text view to title
                self.sampleText.text = posts.first?.title
                print(posts.count)
            })
            .addDisposableTo(disposeBag)
        
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        displayText()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

