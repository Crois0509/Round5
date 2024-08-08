import Foundation

func auditionCast(_ host: AuditionManager) {
    for applicants in host.totalApplicantsList {
        do {
            try host.cast(to: applicants)
        } catch TalentTypeError.notTalent {
            print("불합격 사유: 탤런트가 아님")
        } catch TalentTypeError.badPersonality {
            print("불합격 사유: 인성에 문제가 있어보임")
        } catch TalentTypeError.lackOfAbility {
            print("불합격 사유: 능력치 부족")
        } catch {
            print(error)
        }
    }
}
