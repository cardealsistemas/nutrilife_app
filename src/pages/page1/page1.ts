import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';

import {ServiceProvider} from '../../providers/service-provider';

@Component({
  selector: 'page-page1',
  templateUrl: 'page1.html'
})
export class Page1 {

  users : any[];

  constructor(public navCtrl: NavController, public service: ServiceProvider) {
    this.getDados();
  }

  getDados() {

    return this.service.getData().subscribe(
      
      data=>this.users = data,
      err=>console.log(err)
    )
  }

}
