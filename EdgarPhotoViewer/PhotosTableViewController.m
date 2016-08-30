//
//  PhotosTableViewController.m
//  EdgarPhotoViewer
//
//  Created by Andreas Schmid on 8/28/16.
//  Copyright © 2016 Edgar Ruiz. All rights reserved.
//

#import "PhotosTableViewController.h"
#import "PhotoViewController.h"

@interface PhotosTableViewController (){
    NSMutableArray *photos;
}

@end

@implementation PhotosTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    photos = [[NSMutableArray alloc] init];
    
    Photos *currPhoto = [[Photos alloc] init];
    
    currPhoto.fileName = @"cpp-logo";
    currPhoto.title = @"C++";
    currPhoto.photoDescription = @"I learned c++ in Alex Ryba cs111 and Jerry Waxman cs211";
    [photos addObject:currPhoto];
    
    currPhoto = [[Photos alloc] init];
    
    currPhoto.fileName = @"java-logo";
    currPhoto.title = @"Java";
    currPhoto.photoDescription = @"I learned Java in Kenneth Lord cs212";
    [photos addObject:currPhoto];
    
    currPhoto = [[Photos alloc] init];
    
    currPhoto.fileName = @"javascript-logo";
    currPhoto.title = @"Javascript";
    currPhoto.photoDescription = @"I learned Javascript by myself while learning NodeJS";
    [photos addObject:currPhoto];
    
    currPhoto = [[Photos alloc] init];
    
    currPhoto.fileName = @"nodejs-logo";
    currPhoto.title = @"NodeJS";
    currPhoto.photoDescription = @"I learned NodeJS using Udemy in order to understand SailsJS for SG";
    [photos addObject:currPhoto];
    
    currPhoto = [[Photos alloc] init];
    
    currPhoto.fileName = @"objective-c-logo";
    currPhoto.title = @"Objective C";
    currPhoto.photoDescription = @"I learned ObjectiveC while doing my internship at SportsGuru";
    [photos addObject:currPhoto];

    
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [photos count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    Photos *current = [photos objectAtIndex:indexPath.row];
    cell.textLabel.text = current.title;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    PhotoViewController *pvc = [segue destinationViewController];
    NSIndexPath *indexPath  = [self.tableView indexPathForSelectedRow];
    [pvc setCurrPhoto:[photos objectAtIndex:indexPath.row]];
    
    
    // Pass the selected object to the new view controller.
}


@end
