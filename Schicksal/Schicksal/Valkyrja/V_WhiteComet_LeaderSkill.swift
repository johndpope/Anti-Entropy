//
//  V_WhiteComet_LeaderSkill.swift
//  Schicksal
//
//  Created by Cirno MainasuK on 2018-4-18.
//  Copyright © 2018年 MainasuK. All rights reserved.
//

import Foundation

public let SKS_WhiteComet_LeaderSkill: Skill = .leaderSkill(SK_WhiteComet_MeteorBless(), [SK_WhiteComet_Guider()])

// MARK: - Meteor Bless - Guider
struct SK_WhiteComet_MeteorBless_Guider_Explanation: Explanation {
    let caption_EN: String = "Guider"
    let content_EN: String = """
        Increases maximum HP by 10% during team battles
        """

    let caption_CN: String = ""
    let content_CN: String = ""

    let caption_JP: String = "導く者"
    let content_JP: String = """
        戦闘中チーム全員のHP上限+10%
        """
}

struct SK_WhiteComet_MeteorBless_Guider: MainSubskill {
    let explanation: Explanation = SK_WhiteComet_MeteorBless_Guider_Explanation()
    let skillType: SkillType = .buff
}

extension SK_WhiteComet_MeteorBless_Guider {
    var passiveHPUP: Percentage { return 0.10 }
}


// MARK: - Meteor Bless
struct SK_WhiteComet_MeteorBless_Explanation: Explanation {
    let caption_EN: String = "Meteor Bless"
    let content_EN: String = """
        Team receives bonus if leader
        """

    let caption_CN: String = ""
    let content_CN: String = ""

    let caption_JP: String = "流星の加護"
    let content_JP: String = """
        リーダー枠に設定されている時、効果発動
        """
}

struct SK_WhiteComet_MeteorBless: MainSkill {
    let explanation: Explanation = SK_WhiteComet_MeteorBless_Explanation()
    let skillType: SkillType = .buff
    let mainSubskills: [MainSubskill] = [SK_WhiteComet_MeteorBless_Guider()]
}

// MARK: - Guide
struct SK_WhiteComet_Guider_Explanation: Explanation {
    let caption_EN: String = "Guider"
    let content_EN: String = """
        Increases maximum HP by 18% during team battles
        """

    let caption_CN: String = ""
    let content_CN: String = ""

    let caption_JP: String = "導く者"
    let content_JP: String = """
        戦闘中チーム全員のHP上限+18%
        """
}

struct SK_WhiteComet_Guider: SubSkill {
    let explanation: Explanation = SK_WhiteComet_Guider_Explanation()
    let skillType: SkillType = .buff
    let skillUnlockRank: SkillUnlockRank = .A
}

extension SK_WhiteComet_Guider {
    var passiveHPUP: Percentage { return 0.080 }    // except 0.10 UP in passive skill
}
