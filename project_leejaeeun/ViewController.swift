//
//  ViewController.swift
//  project_leejaeeun
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var selectField: UIPickerView!
    @IBOutlet var lbFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var confirmBtn: UIButton!
    

    let fieldArray: Array<String> = ["소설", "자기계발", "사회", "인문", "과학"]
    let bookArray: Array<String> = ["나미야 잡화점의 기적", "자존감 수업", "세상을 바꾸는 언어", "사피엔스", "코스모스"]
    let MAX_ARRAY_NUM = 5
    var imageArray = [UIImage?]()
    let PICKER_VIEW_COLUMN = 1
    var imageFileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
            
            lbFileName.text = bookArray[0]
            imageView.image = imageArray[0]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
            return fieldArray.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

            return fieldArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbFileName.text = bookArray[row]
        imageView.image = imageArray[row]
    }
    
    @IBAction func resultBtn(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        nameLabel.text = textField.text
        return true
    }
}

