import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import {ServiceProvider} from '../../providers/service-provider';
import { ViewChild } from '@angular/core';
import { Slides } from 'ionic-angular';

@Component({
  selector: 'page-page1',
  templateUrl: 'page1.html'
})
export class Page1 {

  @ViewChild(Slides) slides: Slides;
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
