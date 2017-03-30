import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';

import {ServiceProvider} from '../../providers/service-provider'

@Component({
  selector: 'page-page1',
  templateUrl: 'page1.html'
})
export class Page1 {

  produtos : any[];

  constructor(public navCtrl: NavController, public servece : ServiceProvider) {

  }

}
