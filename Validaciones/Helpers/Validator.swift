import Foundation
import UIKit

class Validator {
    
    private func validate(text: String, with rules: [Reglas]) -> String? {
        return rules.compactMap({ $0.check(text) }).first
    }

    public func validate(input: UITextField, salida: UILabel, with rules: [Reglas]) -> Void {
        guard let texto = input.text, let mensaje = validate(text: texto, with: rules) else {
            salida.isHidden = true
            return
        }

        salida.isHidden = false
        salida.text = mensaje
        salida.textColor = UIColor.red
    }
    
}

