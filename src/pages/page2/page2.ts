import { Component } from '@angular/core';

import { NavController, NavParams } from 'ionic-angular';

import {ServiceProvider} from '../../providers/service-provider';

@Component({
  selector: 'page-page2',
  templateUrl: 'page2.html'
})
export class Page2 {

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
