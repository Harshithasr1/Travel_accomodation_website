import { Component, Input, OnInit } from '@angular/core';
import { EmartService } from '../../emart.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-item-list',
  templateUrl: './item-list.component.html',
  styleUrls: ['./item-list.component.css']
})
export class ItemListComponent implements OnInit {
  btnstate: boolean;
  npassengers: number;
  allFlights: any;
  constructor(protected emartService: EmartService,
    protected router: Router) { }

  ngOnInit(): void {
    this.npassengers = history.state.npassengers;
    this.emartService.getFlights(history.state.source, history.state.destination, history.state.depdate).subscribe(
      (response: any) => {
        this.allFlights = response;

        if (JSON.parse(sessionStorage.getItem('auth'))) {
          this.btnstate = false;
        } else {
          this.btnstate = true;
        }
      }
    );
  }
  
  sortByPrice(prices: any) {
    prices.sort((n1, n2) => n1.cost - n2.cost);
  }

  sortByName(names: any) {
    names.sort(function (low, high) {
      if (low.flightName < high.flightName) {
        return -1;
      } else if (low.flightName > high.flightName) {
        return 1;
      } else {
        return 0;
      }
    });
  }
  
  addToCart(item: any) {
    item.cost *= this.npassengers;
    this.emartService.addToCart(item);
    this.router.navigate(['cart-list']);
  }
}