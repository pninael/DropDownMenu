/**
 *  Usage example
 *  Will not be pushed
 */

#import "DropDownMenuNavBarVCViewController.h"
#import "DropDownMenuNavBar.h"

@interface DropDownMenuNavBarVCViewController ()

@end

@implementation DropDownMenuNavBarVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // initialize the DropDownMenuNavBar with titles and blocks
    DropDownMenuNavBar *dropDownMenuNavBar = [[DropDownMenuNavBar alloc]initWithMenuItems:
    [DDMenuItem itemWithTitle:@"first" blockAction:^
    {
        NSLog(@"moving back to fisrt");
        
        [self.navigationController popViewControllerAnimated:YES];
    }],
    [DDMenuItem itemWithTitle:@"second" blockAction:^
    {
        NSLog(@"moving to seconds");
        
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UIViewController *secondVC = [storyBoard instantiateViewControllerWithIdentifier:@"second"];
        secondVC.navigationItem.hidesBackButton = YES;
        
        [self.navigationController pushViewController:secondVC animated:YES];
    }],
    nil];
    
    // set the selected item
    //dropDownMenuNavBar.dropDownMenu.selectedItemIndex = 1;
    
    // configure colors
    dropDownMenuNavBar.dropDownMenu.menuItemsBackgroudColor = self.view.backgroundColor;
    //dropDownMenuNavBar.dropDownMenu.selectedItemBackgroundColor = [UIColor yellowColor];
    //dropDownMenuNavBar.dropDownMenu.titlesColor = [UIColor greenColor];
    
    // replace the existing NavBar with DropDownMenuNavBar
    [self.navigationController setValue:dropDownMenuNavBar forKeyPath:@"navigationBar"];
}

@end
