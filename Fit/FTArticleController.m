//
//  FTArticleController.m
//  Livefit
//
//  Created by folse on 8/8/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTArticleController.h"
#import "FTArticle.h"
#import "ArticleCell.h"

@interface FTArticleController ()
{
    NSMutableArray *articleArray;
}

@end

@implementation FTArticleController

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
    
    articleArray = [NSMutableArray new];
    
    [HUD show:YES];
        
    PFQuery *query = [PFQuery queryWithClassName:@"Article"];
    
    [self findObjects:query];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)findObjects:(PFQuery *)query
{
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            
            [HUD hide:YES];
            
            for (PFObject *object in objects) {
                NSLog(@"%@", object);
                
                FTArticle *article = [FTArticle new];
                article.title = object[@"title"];
                article.subTitle = object[@"subTitle"];
                article.content = object[@"articleContent"];
                article.coverPhotoUrl = object[@"coverPhoto"];
                article.photoUrl = object[@"photo"];
                
                [articleArray addObject:article];
            }
            
            [self.tableView reloadData];
            
        } else {
            
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return articleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = indexPath.row;
    FTArticle *cellArticle = articleArray[row];
    
    ArticleCell *cell = (ArticleCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [cell.titleLabel setText:cellArticle.title];
    [cell.subTitleLabel setText:cellArticle.subTitle];
    
    [cell.coverImageView sd_setImageWithURL:[NSURL URLWithString:cellArticle.coverPhotoUrl] placeholderImage:[UIImage imageNamed:@"default_photo"]];
    
    return cell;
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
