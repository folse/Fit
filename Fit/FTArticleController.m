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
#import "FTArticleDetailController.h"
#import "Reachability.h"
#import "JDSideMenu.h"

@interface FTArticleController ()
{
    NSMutableArray *articleArray;
    FTArticle *selectedArticle;
}

@property (weak, nonatomic) IBOutlet UIImageView *testImageView;

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

-(void)viewDidAppear:(BOOL)animated
{
    //[self refreshWebPage];
    
    Reachability *reachability = [Reachability reachabilityWithHostName:@"www.baidu.com"];
    if ([reachability currentReachabilityStatus] == 0){
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"网络连接好像有问题" message:@"请检查网络" delegate:self cancelButtonTitle:@"好" otherButtonTitles:nil, nil];
        [alertView show];
        
    }else{
        
        [self refresh];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [HUD show:YES];
}

-(void)refresh
{
    articleArray = [NSMutableArray new];
    
    PFQuery *query = [PFQuery queryWithClassName:@"Article"];
    
    [self findObjects:query];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)menuBtnAction:(id)sender {
    JDSideMenu *sideMenu = (JDSideMenu *)self.navigationController.parentViewController;
    
    if (sideMenu.isMenuVisible) {
        [sideMenu hideMenuAnimated:YES];
    }else{
        [sideMenu showMenuAnimated:YES];
    }
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    selectedArticle = articleArray[indexPath.row];
    
    [self performSegueWithIdentifier:@"articleDetailController" sender:self];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FTArticleDetailController *articleDetailController = segue.destinationViewController;
    articleDetailController.article = selectedArticle;
}

@end
