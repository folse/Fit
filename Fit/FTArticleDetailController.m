//
//  FTArticleDetailController.m
//  Livefit
//
//  Created by folse on 8/8/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTArticleDetailController.h"

@interface FTArticleDetailController ()

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation FTArticleDetailController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_titleLabel setText:_article.title];

    
    UILabel *contentLabel = [[UILabel alloc] init];

    [contentLabel setNumberOfLines:0];
    contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    UIFont *font = [UIFont fontWithName:@"Arial" size:12];
    contentLabel.font = font;
    
    NSDictionary *attribute = @{NSFontAttributeName: [UIFont systemFontOfSize:13]};
    
    CGSize labelSize = [_article.content boundingRectWithSize:CGSizeMake(300, self.view.frame.size.height - 364) options: NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;

    contentLabel.frame = CGRectMake(10,300, labelSize.width, labelSize.height);
    contentLabel.text = _article.content;
    [self.view addSubview:contentLabel];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
