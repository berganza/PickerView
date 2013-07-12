//
//  ViewController.h
//  PickerView
//
//  Created by LLBER on 11/07/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate, UIWebViewDelegate>// Protocolos del pickerview


@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

@property (strong, nonatomic) IBOutlet UILabel *etiquetaLabel;

@property (strong, nonatomic) NSArray * datos;

@property (strong, nonatomic) IBOutlet UIWebView *paginaWeb;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView * indicadorDeActividad;

@end
