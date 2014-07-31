//
//  FTArticlesController.m
//  Fit
//
//  Created by folse on 7/23/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTArticlesController.h"

@interface FTArticlesController ()
{
    NSURL *URL;
    MBProgressHUD *HUD;
}

@property (strong, nonatomic) IBOutlet UIWebView *articlesWebView;

@end

@implementation FTArticlesController

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
    [self refreshWebPage];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ADD_HUD
    
}

-(void)refreshWebPage
{
    URL = [NSURL URLWithString:@"http://livefitcn.com/articlev2"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:URL]];
}

- (void)onLeftBtn {
    
    if ([[NSString stringWithFormat:@"http://livefitcn.com%@",URL.path] isEqualToString:@"http://livefitcn.com/"]) {
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        if([self.webView canGoBack]){
            [self.webView goBack];
        }else{
            [self.navigationController popViewControllerAnimated:YES];
        }
    }
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSLog(@"%@",request.URL);
    
    if ([request.URL.path isEqualToString:@"/articlev2"]) {
        
        self.navigationItem.leftBarButtonItem = nil;
        
    }else{
        
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[self backButtonImage] style:UIBarButtonItemStyleDone target:self action:@selector(onLeftBtn)];
    }
    
    return YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [HUD setHidden:YES];
}

- (UIImage *)backButtonImage
{
    static UIImage *image;
    
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        CGSize size = CGSizeMake(50.0, 44.0);
        UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
        
        [[UIColor whiteColor] setStroke];
        [[UIColor whiteColor] setFill];
        
        UIBezierPath *path = [UIBezierPath bezierPath];
        path.lineWidth = 1.5;
        path.lineCapStyle = kCGLineCapButt;
        path.lineJoinStyle = kCGLineJoinMiter;
        [path moveToPoint:CGPointMake(11.0, 11.0)];
        [path addLineToPoint:CGPointMake(1.0, 21.0)];
        [path addLineToPoint:CGPointMake(11.0, 31.0)];
        [path stroke];
        
        image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    });
    
    return image;
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
