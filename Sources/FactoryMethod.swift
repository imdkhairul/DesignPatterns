//: Playground - noun: a place where people can play

import UIKit

protocol Language
{
    func officialLanguage() -> String
    func secondLanguage() -> String
}

class Germany: Language
{
    func officialLanguage() -> String
    {
        return "GERMAN"
    }
    func secondLanguage() -> String
    {
        return "ENGLISH"
    }
}

class China: Language
{
    func officialLanguage() -> String
    {
        return "CHIENESE"
    }
    func secondLanguage() -> String
    {
        return "ENGLISH"
    }
}

enum Country
{
    case germany
    case china
    case unitedStates
}

enum LanguageFactory
{
    static func language(for country:Country) -> Language?
    {
        switch country {
        case .germany:
            return Germany()
        case .china:
            return China()
        default:
            return nil
        }
    }
}

//LanguageFactory.language(for: .china)?.officialLanguage()
//LanguageFactory.language(for: .germany)?.officialLanguage()


