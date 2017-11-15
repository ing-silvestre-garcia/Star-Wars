//
//  Detalle.h
//  star wars
//
//  Created by Silvestre García on 11/12/17.
//  Copyright © 2017 Pegasus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWObject.h"

@interface Detalle : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblNombre;
@property (weak, nonatomic) IBOutlet UILabel *lblAltura;
@property (weak, nonatomic) IBOutlet UILabel *lblPeso;
@property (weak, nonatomic) IBOutlet UILabel *lblColorCabello;
@property (weak, nonatomic) IBOutlet UILabel *lblColorPiel;
@property (weak, nonatomic) IBOutlet UILabel *lblColorOjos;
@property (weak, nonatomic) IBOutlet UILabel *lblFechaNacimiento;
@property (weak, nonatomic) IBOutlet UILabel *lblGenero;
@property (weak, nonatomic) IBOutlet UILabel *lblPeliculas;
@property (weak, nonatomic) IBOutlet UILabel *lblEspecies;
@property (weak, nonatomic) IBOutlet UILabel *lblVehiculos;
@property (weak, nonatomic) IBOutlet UILabel *lblNaves;
@property (nonatomic) SWObject *personaje;
@end
