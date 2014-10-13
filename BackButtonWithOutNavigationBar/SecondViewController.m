//
//  SecondViewController.m
//  BackButtonWithOutNavigationBar
//
//  Created by ammar falmban on 10/13/14.
//  Copyright (c) 2014 devAspirant.wordpress.com. All rights reserved.
//
/* Warning message : warning: Unsupported Configuration: Scene is unreachable due to lack of entry points and does not have an identifier for runtime access via -instantiateViewControllerWithIdentifier:
   
   Soluation : by define the Storyboard ID.
    Runing mistak : When I press the Go_To_VC_2 button it is push me to the same view. why? 
    A: Because, I setting the storyboardID for viewController ID. which means the scene will be shown the Go_To_VC_2.then, you have to change the storyboard ID to the second view controller storyboard ID.
 */

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)BackToViewController:(id)sender{
    
    ViewController *FVC = [self.storyboard instantiateViewControllerWithIdentifier:@"FirstVCSBID"];
    [self presentViewController:FVC
                       animated:YES
                     completion:nil];
    
}

@end
