//
//  ScoreViewController.m
//  Astroids
//
//  Created by Robert Carter on 8/25/12.
//  Copyright (c) 2012 Robert Carter. All rights reserved.
//

#import "ScoreViewController.h"
#import "WelcomeViewController.h"

@interface ScoreViewController () 
{
}
@property NSArray *shipsArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ScoreViewController
@synthesize tableView = _tableView;

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
    // Do any additional setup after loading the view from its nib.
    self.tableView.backgroundColor = [UIColor blackColor];
}

- (void)viewDidUnload
{
    [self setTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)gameMenuPressed
{
    WelcomeViewController *welcomeController = [WelcomeViewController new];
    [self presentViewController:welcomeController animated:YES completion:nil];
}

@end
