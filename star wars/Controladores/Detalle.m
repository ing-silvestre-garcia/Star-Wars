//
//  Detalle.m
//  star wars
//
//  Created by Silvestre García on 11/12/17.
//  Copyright © 2017 Pegasus. All rights reserved.
//

#import "Detalle.h"

@interface Detalle ()

@end

@implementation Detalle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblNombre.text = self.personaje.name;
    self.lblAltura.text = self.personaje.height;
    self.lblPeso.text = self.personaje.mass;
    self.lblColorCabello.text = self.personaje.hair_color;
    self.lblColorPiel.text = self.personaje.skin_color;
    self.lblColorOjos.text = self.personaje.eye_color;
    self.lblFechaNacimiento.text = self.personaje.birth_year;
    self.lblGenero.text = self.personaje.gender;
    self.lblPeliculas.text = [NSString stringWithFormat:@"%li",self.personaje.films.count];
    self.lblEspecies.text = [NSString stringWithFormat:@"%li",self.personaje.species.count];
    self.lblVehiculos.text = [NSString stringWithFormat:@"%li",self.personaje.vehicles.count];
    self.lblNaves.text = [NSString stringWithFormat:@"%li",self.personaje.starships.count];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
