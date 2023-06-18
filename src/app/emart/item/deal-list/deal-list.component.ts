import { Component, OnInit } from '@angular/core';
import { EmartService } from '../../emart.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-deal-list',
  templateUrl: './deal-list.component.html',
  styleUrls: ['./deal-list.component.css']
})
export class DealListComponent implements OnInit {
  allDeals: any;
  btnstate: boolean;
  source: string;
  destination: string;
  fromdate: Date;
  todate: Date;
  minprice: number;
  maxprice: number;

  constructor(protected emartService: EmartService,
    protected router: Router) { }

  ngOnInit(): void {
    this.emartService.getDeals(history.state.srccity, history.state.destcity, history.state.fromdate, history.state.todate, 
      history.state.minprice, history.state.maxprice).subscribe(
      (response: any) => {
        this.allDeals = response;
        this.allDeals.sort((n1, n2) => n1.cost - n2.cost);
        if (JSON.parse(sessionStorage.getItem('auth'))) {
          this.btnstate = false;
        } else {
          this.btnstate = true;
        }
      }
    );
  }
  
  addToCart(item: any) {
    this.emartService.addToCart(item);
    this.router.navigate(['cart-list']);
  }

}