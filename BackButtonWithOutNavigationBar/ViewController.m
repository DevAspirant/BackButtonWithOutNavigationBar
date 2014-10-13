//
//  ViewController.m
//  BackButtonWithOutNavigationBar
//
//  Created by ammar falmban on 10/13/14.
//  Copyright (c) 2014 devAspirant.wordpress.com. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)GoToSecondViewController:(id)sender{
    
    SecondViewController *SVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewContrtoller"];
    
    [self presentViewController:SVC
                       animated:YES
                     completion:nil];
    
}

@end
