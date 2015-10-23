//
//  FavoritesViewController.m
//  InstaPhoto
//
//  Created by Robin Wu on 10/1/15.
//  Copyright © 2015 Robin Wu. All rights reserved.
//

#import "FavoritesViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [myButton setImage:[UIImage imageNamed:@"RobinWu.jpg"] forState:UIControlStateNormal];
    [myButton setImage:[UIImage imageNamed:@"RobinWu.jpg"] forState:UIControlStateHighlighted];
    [myButton setFrame:CGRectMake(15, 65, 100, 100)];
    
    [self.view addSubview:myButton];
    
    [myButton addTarget:self action:@selector(showZoomedPicture:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) showZoomedPicture: (UIButton *) sender {
    UIViewController *myImageViewController = [[UIViewController alloc] init];
    myImageViewController.view.frame = self.view.frame;
    myImageViewController.title = @"Try IOS Logo";
    
    UIImageView *myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"RobinWu.jpg"]];
    [myImageView setContentMode:UIViewContentModeScaleAspectFit];
    
    myImageView.frame = myImageViewController.view.frame;
    [myImageViewController.view addSubview:myImageView];
    
    [self.navigationController pushViewController:myImageViewController animated:YES];
    
}


@end
