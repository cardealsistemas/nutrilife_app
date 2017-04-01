import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';

import {ServiceProvider} from '../../providers/service-provider';

@Component({
  selector: 'page-page1',
  templateUrl: 'page1.html'
})
export class Page1 {

  categorias : any[];

  constructor(public navCtrl: NavController, public service: ServiceProvider) {

    this.getDados();
  }

  getDados() {

    return this.service.getData('getCategorias').subscribe(
      data=>this.categorias = data,
      err=>console.log(err)
    )
  }

}
