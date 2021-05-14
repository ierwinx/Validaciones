import Foundation

struct Reglas {
    
    let check: (String) -> String?

    static let notEmpty = Reglas(check: {
        return $0.isEmpty ? "Campo vacio" : nil
    })

    static let email = Reglas(check: {
        let regex = "^[\\w-.]{1,}\\@([\\w]{1,}.){1,}[a-z]{2,4}$"

        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: $0) ? nil : "Email no valido"
    })
    
    static let nombres = Reglas(check: {
        let regex = "^[a-zA-Z ]+$"

        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: $0) ? nil : "Nombre no valido"
    })
    
    static let edad = Reglas(check: {
        let regex = "^[1-9]{1,2}$"

        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: $0) ? nil : "Edad no valida"
    })
    
}
