//
//  FTArticle.h
//  Livefit
//
//  Created by folse on 8/4/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTArticle : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subTitle;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSString *photoUrl;
@property (nonatomic, strong) NSString *coverPhotoUrl;

@end
