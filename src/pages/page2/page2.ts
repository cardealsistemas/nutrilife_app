import { Component } from '@angular/core';

import { NavController, NavParams, LoadingController,  ActionSheetController } from 'ionic-angular';

import {ServiceProvider} from '../../providers/service-provider';

import { NgModule } from '@angular/core';

/**************************/
import { Http } from '@angular/http';

import 'rxjs/add/operator/map';



/**************************/

@Component({
  selector: 'page-page2',
  templateUrl: 'page2.html'
})
export class Page2 {

  /*produtos : any[];
  searchQuery: string = '';

  constructor(public navCtrl: NavController, public service: ServiceProvider) {

    this.getDados();
  }

  getDados() {

    return this.service.getData('getProdutos').subscribe(
      data=>this.produtos = data,
      err=>console.log(err)
    )
  }

  getItems(ev: any) {
    // Reset items back to all of the items
    this.getDados();

    // set val to the value of the searchbar
    let val = ev.target.value;

    // if the value is an empty string don't filter the items
    if (val && val.trim() != '') {
      this.produtos = this.produtos.filter((item) => {
        return (item.toLowerCase().indexOf(val.toLowerCase()) > -1);
      })
    }
  }

  searchQuery: string = '';
  items: any[];

  constructor(public navCtrl: NavController, public service: ServiceProvider) {
    this.initializeItems();
  }

  initializeItems() {

    return this.items = this.service.getData('getProdutos');
    
    /*return this.service.getData('getProdutos').subscribe(
      data=>this.items = data,
      err=>console.log(err)
    )*/

    /*this.items = [
      'Amsterdam',
      'Bogota',
      'Quero'
    ];
  }

  getItems(ev: any) {
    // Reset items back to all of the items
    this.initializeItems();

    // set val to the value of the searchbar
    let val = ev.target.value;

    // if the value is an empty string don't filter the items
    if (val && val.trim() != '') {
      this.items = this.items.filter((item) => {
        return (item.toLowerCase().indexOf(val.toLowerCase()) > -1);
      })
    }
  }*/

  public itens: Array<string>;
  public noFilter: Array<any>;
  public hasFilter: boolean = false;
  searchTerm: string = '';   
   
   constructor(public navCtrl: NavController, public http: Http, 
     public loadingCtrl: LoadingController, public service: ServiceProvider
     ,  public actionSheetCtrl: ActionSheetController) {

     this.service.getData('getProdutos')
      .subscribe(data => {
        this.itens = data;
        this.noFilter = this.itens;
       this.hasFilter = false;
      });

      // Exibindo conteúdo do array no console do browser
      console.log(this.itens);

       

      this.fetchContent(); //Loading da página de produtos

   }

   /*******LOADING*********/

   fetchContent ():void {
    let loading = this.loadingCtrl.create({
      content: 'Carregando...'
    });
 
    loading.present();
 
    this.service.getData('getProdutos')
      .subscribe(data => {
        this.itens = data;
        loading.dismiss();
      });  
  }

  /********FIM***********/


  itemSelected (item):void {
    alert(item.Nome);
  }

  /***FILTRO POR CATEGORIA***/


  showFilters() :void {

  this.update();
 
    let actionSheet = this.actionSheetCtrl.create({
      title: 'Filter options:',
      buttons: [
        {
          text: 'Suplementos',
          handler: () => {
            
            this.itens = this.noFilter.filter((item) => item.idCategoria == 1);
            this.hasFilter = true;
          }
        },
        {
          text: 'Naturais',
          handler: () => {
          
            this.itens = this.noFilter.filter((item) => item.idCategoria == 3);
            this.hasFilter = true;
          }
        },        
        {
          text: 'Limpar Filtro',
          role: 'cancel',
          handler: () => {
           
            this.itens = this.noFilter;
            this.hasFilter = false;
          }
        }
      ]
    });
 
    actionSheet.present();
 
  }


  doRefresh(refresher) {
 
    /*let paramsUrl = this.feeds[0].data.name;
 
    this.http.get(this.newerPosts + paramsUrl).map(res => res.json())
      .subscribe(data => {
      
        this.feeds = data.data.children.concat(this.feeds);
        
        this.feeds.forEach((e, i, a) => {
          if (!e.data.thumbnail || e.data.thumbnail.indexOf('b.thumbs.redditmedia.com') === -1 ) {  
            e.data.thumbnail = 'http://www.redditstatic.com/icon.png';
          }
        })
        refresher.complete();
      });*/    
       this.update();
       this.hasFilter = false;
      refresher.complete();
  }  

  update() :void {
    this.service.getData('getProdutos')
      .subscribe(data => {
        this.itens = data;
        this.noFilter = this.itens;       
      }); 
  }

  filterItems() {


    this.hasFilter = false;
    this.itens = this.noFilter.filter((item) => {
        return item.Nome.toLowerCase().indexOf(this.searchTerm.toLowerCase()) > -1;
    });
  }  



}
