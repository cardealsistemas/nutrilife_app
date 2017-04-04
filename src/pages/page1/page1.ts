import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { ServiceProvider } from '../../providers/service-provider';
import { ViewChild } from '@angular/core';
import { Slides } from 'ionic-angular';
import { Page4 } from '../page4/page4'

@Component({
  selector: 'page-page1',
  templateUrl: 'page1.html'
})
export class Page1 {

  @ViewChild(Slides) slides: Slides;
  promocoes : any[];
  page = Page4;

  constructor(public navCtrl: NavController, public service: ServiceProvider) {

    this.getDados();
  }

  getDados() {

    return this.service.getData('getPromocoes').subscribe(
      data=>this.promocoes = data,
      err=>console.log(err)
    )
  }

}
