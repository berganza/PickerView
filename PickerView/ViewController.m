//
//  ViewController.m
//  PickerView
//
//  Created by LLBER on 11/07/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//



//**************************************
// Desde el storyboard acordaros de enlazar el picker (arrastrando botón derecho) hacia el view controller como se muestra en las capturas adjuntas.
// Dos veces: una para el dataSource y otra para el delegate.
//**************************************




#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize datos, pickerView, etiquetaLabel, paginaWeb, indicadorDeActividad;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray * array = [[NSArray alloc] initWithObjects:@"Uno", @"Dos", @"Tres", @"Naranja", @"Cyan", @"Magenta", @"iPhone4Spain", @"DesarrolloWeb", @"EscuelaIT", nil];
    self.datos = array;
    
    paginaWeb.delegate = self;
    indicadorDeActividad.hidden = YES;

}

-(int) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(int) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [datos count];
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return [self.datos objectAtIndex:row];
}

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    int fila = row;
    
    if (fila ==0) {
    etiquetaLabel.text=@"1";
        
    } else if (fila==1) {
    etiquetaLabel.text=@"2";
        
    } else if (fila==2) {
    etiquetaLabel.text=@"3";
        
    } else if (fila==3) {
        self.view.backgroundColor = [UIColor orangeColor];
        
    } else if (fila==4) {
        self.view.backgroundColor = [UIColor cyanColor];
        
    } else if (fila==5) {
        self.view.backgroundColor = [UIColor magentaColor];
        
        
        // Esta parte solo se verá en el iPad
        
    } else if (fila==6) {
        [paginaWeb loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:@"http://www.iphone4spain.com/"]]];
        
    } else if (fila==7) {
        [paginaWeb loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:@"http://www.desarrolloweb.com/"]]];
        
    } else if (fila==8) {
        [paginaWeb loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:@"http://escuela.it/"]]];
        
    }
}

-(void) webViewDidStartLoad: (UIWebView *) paginaWeb {
    
    indicadorDeActividad.hidden = NO;
    [indicadorDeActividad startAnimating];
    
}

-(void) webViewDidFinishLoad: (UIWebView *) paginaWeb {
    
    indicadorDeActividad.hidden = YES;
    [indicadorDeActividad stopAnimating];
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
