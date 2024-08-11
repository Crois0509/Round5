import Foundation

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let jamking = TalentedPerson(name: "jamking", height: 200, singing: .A, dancing: .C, acting: .C)
let finnn = TalentedPersonWithBadPersonality(name: "finnn", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)

let hacker = Hacker()
let mySon = Person(name: "nalgangdo", height: 10000)
// 해커의 선언

var manager: AuditionManager = AuditionManager(totalApplicantsList: [yagom,
                                                                     noroo,
                                                                     summer,
                                                                     jamking,
                                                                     finnn])

hacker.hackPassedApplicantsList()
// 해커의 해킹

casting(&manager)
