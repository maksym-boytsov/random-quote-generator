import UIKit

class AuthorController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var authorPicker: UIPickerView!
    
    var pickerData: [String: [String]] = ["Confucius": ["123", "456", "789"], "Ernest Hemingway": ["123"], "Friedrich Nietzsche": ["321", "4642", "321312"]]
    var delegate: AuthorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.authorPicker.delegate = self
        self.authorPicker.dataSource = self
    }
    
    @IBAction func onBackClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // PROTOCOLS
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.capacity
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array(pickerData.keys)[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        delegate?.onAuthorChoose(author: Array(pickerData.keys)[row], quotes: Array(pickerData.values)[row])
    }
}

