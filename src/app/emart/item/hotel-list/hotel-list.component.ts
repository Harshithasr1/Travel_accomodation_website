import { Component, OnInit } from '@angular/core';
import { EmartService } from '../../emart.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-hotel-list',
  templateUrl: './hotel-list.component.html',
  styleUrls: ['./hotel-list.component.css']
})
export class HotelListComponent implements OnInit {
  btnstate: boolean;
  nrooms: number;
  allHotels: any;
  constructor(protected emartService: EmartService,
    protected router: Router) { }

  ngOnInit(): void {
    this.nrooms = history.state.nrooms;
    this.emartService.getHotels(history.state.city).subscribe(
      (response: any) => {
        this.allHotels = response;
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

  sortByRating(ratings: any) {
    ratings.sort((n1, n2) => n1.ratings - n2.ratings);
  }

  sortByName(names: any) {
    names.sort(function (low, high) {
      if (low.hotelName < high.hotelName) {
        return -1;
      } else if (low.hotelName > high.hotelName) {
        return 1;
      } else {
        return 0;
      }
    });
  }

  addToCart(item: any) {
    item.cost *= this.nrooms;
    this.emartService.addToCart(item);
    this.router.navigate(['cart-list']);
  }
}
