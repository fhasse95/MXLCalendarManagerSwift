//
//  String.swift
//  MXLCalendarManagerSwift
//
//  Created by Fabian Hasse on 25.03.21.
//

import Foundation

extension String {
    
    private func getSpecialCharacters() -> [String: String] {
        var result = [String: String]()
        result["Ã¼"] = "ü"
        result["Ã¤"] = "ä"
        result["Ã¶"] = "ö"
        result["Ã–"] = "Ö"
        result["ÃŸ"] = "ß"
        result["Ã "] = "à"
        result["Ã¡"] = "á"
        result["Ã¢"] = "â"
        result["Ã£"] = "ã"
        result["Ã¹"] = "ù"
        result["Ãº"] = "ú"
        result["Ã»"] = "û"
        result["Ã™"] = "Ù"
        result["Ãš"] = "Ú"
        result["Ã›"] = "Û"
        result["Ãœ"] = "Ü"
        result["Ã²"] = "ò"
        result["Ã³"] = "ó"
        result["Ã´"] = "ô"
        result["Ã¨"] = "è"
        result["Ã©"] = "é"
        result["Ãª"] = "ê"
        result["Ã«"] = "ë"
        result["Ã€"] = "À"
        result["Ã"] = "Á"
        result["Ã‚"] = "Â"
        result["Ãƒ"] = "Ã"
        result["Ã„"] = "Ä"
        result["Ã…"] = "Å"
        result["Ã‡"] = "Ç"
        result["Ãˆ"] = "È"
        result["Ã‰"] = "É"
        result["ÃŠ"] = "Ê"
        result["Ã‹"] = "Ë"
        result["ÃŒ"] = "Ì"
        result["Ã"] = "Í"
        result["ÃŽ"] = "Î"
        result["Ã"] = "Ï"
        result["Ã‘"] = "Ñ"
        result["Ã’"] = "Ò"
        result["Ã“"] = "Ó"
        result["Ã”"] = "Ô"
        result["Ã•"] = "Õ"
        result["Ã˜"] = "Ø"
        result["Ã¥"] = "å"
        result["Ã¦"] = "æ"
        result["Ã§"] = "ç"
        result["Ã¬"] = "ì"
        result["Ã­"] = "í"
        result["Ã®"] = "î"
        result["Ã¯"] = "ï"
        result["Ã°"] = "ð"
        result["Ã±"] = "ñ"
        result["Ãµ"] = "õ"
        result["Ã¸"] = "ø"
        result["Ã½"] = "ý"
        result["Ã¿"] = "ÿ"
        result["â‚¬"] = "€"
        return result
    }
    
    public mutating func replaceSpecialCharacters() {
        let specialCharacters = self.getSpecialCharacters()
        for key in specialCharacters.keys {
            self = self.replacingOccurrences(
                of: key,
                with: specialCharacters[key]!)
        }
    }
}
