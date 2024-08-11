import Foundation

func casting(_ host: AuditionManager) {
    for applicants in host.totalApplicantsList {
        do {
            try manager.cast(to: applicants)
        } catch TalentTypeError.notTalent {
            print("불합격 사유: 탤런트가 아님")
            print(MagicNumber.blank)
        } catch TalentTypeError.badPersonality {
            print("불합격 사유: 인성에 문제가 있어보임")
            print(MagicNumber.blank)
        } catch TalentTypeError.lackOfAbility {
            print("불합격 사유: 능력치 부족")
            print(MagicNumber.blank)
        } catch {
            print(error)
        }
    }
    
    manager.announcePassedApplicants()
}
