//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

struct UserCreateRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case countryCode
        case dateOfBirth
        case email
        case firstName
        case languageCodes
        case lastName
        case phoneNumber
        case timeZone
        case accreditation
        case displayName
        case instagramProfile
        case introduction
        case mpSearchEnabled
        case pronouns
        case title
    }

    /** The user's home country code */
    public var countryCode: String

    /** The user's date of birth */
    public var dateOfBirth: Date

    /** The user's email address */
    public var email: String

    /** The user's first name */
    public var firstName: String

    /** The user's selected language's code */
    public var languageCodes: [String]

    /** The user's last name */
    public var lastName: String

    /** The user's phone number */
    public var phoneNumber: String

    /** The user's preferred timezone */
    public var timeZone: String

    /** The user's accreditation */
    public var accreditation: String?

    /** The user's display name */
    public var displayName: String?

    /** The user's instagram profile identifier */
    public var instagramProfile: String?

    /** The user's introduction */
    public var introduction: String?

    /** The user is searchable in marketplace */
    public var mpSearchEnabled: Bool?

    /** The user's pronouns */
    public var pronouns: String?

    /** The user's title */
    public var title: String?
    

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(countryCode, forKey: .countryCode)
        // try container.encode(dateOfBirth, forKey: .dateOfBirth)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let dateBirthString = formatter.string(from: dateOfBirth)
        try container.encode(dateBirthString, forKey: .dateOfBirth)
        try container.encode(email, forKey: .email)
        try container.encode(firstName, forKey: .firstName)
        try container.encode(languageCodes, forKey: .languageCodes)
        try container.encode(lastName, forKey: .lastName)
        try container.encode(phoneNumber, forKey: .phoneNumber)
        try container.encode(timeZone, forKey: .timeZone)
        try container.encodeIfPresent(accreditation, forKey: .accreditation)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(instagramProfile, forKey: .instagramProfile)
        try container.encodeIfPresent(introduction, forKey: .introduction)
        try container.encodeIfPresent(mpSearchEnabled, forKey: .mpSearchEnabled)
        try container.encodeIfPresent(pronouns, forKey: .pronouns)
        try container.encodeIfPresent(title, forKey: .title)
    }
}
