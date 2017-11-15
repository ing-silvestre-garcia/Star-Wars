//
//  Home.m
//  star wars
//
//  Created by Silver García on 11/12/17.
//  Copyright © 2017 Pegasus. All rights reserved.
//

#import "Home.h"
#import "PersonajeViewCell.h"
#import "WebServices.h"
#import "Constants.h"
#import "SWObject.h"
#import "Detalle.h"

@interface Home ()
@property (strong, nonatomic) NSMutableArray *personajes;
@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    _personajes = [[NSMutableArray alloc]init];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [self getPeople];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.personajes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PersonajeViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"personajeCell"];
    SWObject *current = [self.personajes objectAtIndex:indexPath.row];
    int indice = indexPath.row + 1;
    cell.indice.text = [NSString stringWithFormat:@"%li",indice];
    cell.lblNombre.text = current.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self performSegueWithIdentifier:@"toDetail" sender:[self.personajes objectAtIndex:indexPath.row]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 47;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"toDetail"]) {
        Detalle *detalle = [segue destinationViewController];
        detalle.personaje = sender;
    }
}

//********************************************************************************************
#pragma mark                            Data methods
//********************************************************************************************

- (void)getPeople{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [WebServices getPeople:^(NSMutableArray<SWObject> *peoples) {
        
        if(peoples){
            [self.personajes removeAllObjects];
            [self.personajes addObjectsFromArray:peoples];
            [self.tableView reloadData];
        }
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    }];
}
@end
