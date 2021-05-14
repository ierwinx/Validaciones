import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var edadTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var edadLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func validarAction(_ sender: Any) {
        let validator = Validator()
        validator.validate(input: nombreTextField, salida: nombreLabel, with: [.notEmpty, .nombres])
        validator.validate(input: edadTextField, salida: edadLabel, with: [.notEmpty, .edad])
        validator.validate(input: emailTextField, salida: emailLabel, with: [.notEmpty, .email])
    }
    
}
