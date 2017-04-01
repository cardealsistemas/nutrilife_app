import { Injectable } from '@angular/core';
import { Http, Headers, Request, RequestOptions} from '@angular/http';
import 'rxjs/add/operator/map';

import {Observable} from 'rxjs/Observable';

/*
  Generated class for the ServiceProvider provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class ServiceProvider {

  api : string = 'http://localhost/api/';

  constructor(public http: Http) {

  }

  getData(option) {

    let body 		: string = "key="+option,
        type 		: string = "application/x-www-form-urlencoded; charset=UTF-8",
        headers : any = new Headers({ 'Content-Type': type}),
        options : any = new RequestOptions({ headers: headers }),
        url 		: any = this.api+'apiRecupera.php';

    return this.http.post(url, body, options).map(res=>res.json());
  }

}
