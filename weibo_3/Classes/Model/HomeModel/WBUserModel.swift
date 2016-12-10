//
//  WBUserModel.swift
//  weibo_3
//
//  Created by 李鹏跃 on 16/12/5.
//  Copyright © 2016年 13lipengyue. All rights reserved.
//

import UIKit

class WBUserModel: NSObject {
    //用户ID
    var id: Int64 = 0
    //昵称
    var screen_name: String?
    //头像用户头像地址（中图），50×50像素
    var profile_image_url: String?
    //	用户头像地址（高清），高清头像原图
    var avatar_hd: String?
    // 认证等级
    var verified_type: Int = 0
    //会员等级
    var mbrank: Int = 0
}
