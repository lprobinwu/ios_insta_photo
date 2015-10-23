//
//  FirstViewController.m
//  InstaPhoto
//
//  Created by Robin Wu on 9/29/15.
//  Copyright (c) 2015 Robin Wu. All rights reserved.
//

#import "FeedViewController.h"
#import "FavoritesViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Feed";
    }
    return self;
}


//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    
//    self.view.backgroundColor = [UIColor blueColor];
//
//    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
//    
//    self.scrollView.contentSize = CGSizeMake(320, 500);
//
//    UIImageView *myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"RobinWu.jpg"]];
////    [myImageView setContentMode:UIViewContentModeScaleAspectFit];
////    myImageView.frame = self.view.frame;
//    myImageView.frame = CGRectMake(20, 20, 100, 114);
//    [self.scrollView addSubview:myImageView];
//
//    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 140, 280, 40)];
//    nameLabel.text = @"Robin Wu";
//    [self.scrollView addSubview:nameLabel];
//
//    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 280, 40)];
//    cityLabel.text = @"From Vancouver";
//    [self.scrollView addSubview:cityLabel];
//
//    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12, 260, 300, 200)];
//    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
//    biography.editable = NO;
//    biography.text = @"Robin Wu is the .....";
//    [self.scrollView addSubview:biography];
//    
//    UILabel *memeberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 460, 280, 40)];
//    memeberSinceLabel.text = @"November 2012";
//    [self.scrollView addSubview:memeberSinceLabel];
//    
//    [self.view addSubview:self.scrollView];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *favoritesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favoritesButton.frame = CGRectMake(60, 100, 200, 44);
    [favoritesButton setTitle:@"View Favorites" forState:UIControlStateNormal];
    [self.view addSubview:favoritesButton];
    
    [favoritesButton addTarget:self action:@selector(showFavorites:) forControlEvents:UIControlEventTouchUpInside];
}

- (void) showFavorites: (UIButton *) sender {
    FavoritesViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    
    [self.navigationController pushViewController:favoritesViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
