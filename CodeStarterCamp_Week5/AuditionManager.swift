import Foundation

struct AuditionManager {
    let totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    mutating func cast(to talent: Person) throws {
        if talent is Talent {
            guard let talents: Talent = talent as? Talent else {
                print("안타깝지만 불합격입니다.")
                throw TalentTypeError.notTalent
            }
            
            guard ((talents as? TalentedPersonWithBadPersonality) != nil) else {
                print("안타깝지만 불합격입니다.")
                throw TalentTypeError.badPersonality
            }
            
            guard talents.acting != Level.A else {
                print("축하드립니다! 합격입니다.")
                return passedApplicantsList.append(talent)
            }
            
            guard talents.dancing != Level.A else {
                print("축하드립니다! 합격입니다.")
                return passedApplicantsList.append(talent)
            }
            
            guard talents.singing != Level.A else {
                print("축하드립니다! 합격입니다.")
                return passedApplicantsList.append(talent)
            }
            
            print("안타깝지만 불합격입니다.")
        }
    }
    
    func announcePassedApplicants() {
        let passList = passedApplicantsList.map { (person: Person) -> String in
            return "\(person.name)"
        }
        
        print("""
    ---합격자 명단---
    \(passList.joined())
    ------------
    축하합니다!!
    """)
    }
}
