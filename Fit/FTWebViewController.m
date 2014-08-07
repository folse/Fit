//
//  FTWebViewController.m
//  Fit
//
//  Created by folse on 7/29/14.
//  Copyright (c) 2014 Folse. All rights reserved.
//

#import "FTWebViewController.h"

@interface FTWebViewController ()<UIWebViewDelegate>

@end

@implementation FTWebViewController

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
    // Do any additional setup after loading the view.
    
    
    _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 64, 320, 504)];
    _webView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
 
  
//    if (self.presentingViewController) {
//        
//        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[self backButtonImage] style:UIBarButtonItemStyleDone target:self action:@selector(closePage)];
//        
//    }else{
//        
//        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[self backButtonImage] style:UIBarButtonItemStyleDone target:self action:@selector(onLeftBtn)];
//    }
    
    [self.view addSubview:_webView];
    _webView.scalesPageToFit = YES;
    self.webView.delegate = self;
}

- (void)onLeftBtn {
    [self.navigationController popViewControllerAnimated:YES];
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

-(void)closePage
{
    [self dismissViewControllerAnimated:YES completion:nil];

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
