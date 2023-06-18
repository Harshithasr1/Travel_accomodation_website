import { Component, OnInit } from '@angular/core';
import { EmartService } from '../../emart.service';
import { Item } from '../../item';
import { BillDetails } from '../../bill-details';
import { Bill } from '../../bill';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-bill-view',
  templateUrl: './bill-view.component.html',
  styleUrls: ['./bill-view.component.css']
})
export class BillViewComponent implements OnInit {
  cartItems: any;
  buyerName: string;
  buyerId: string = '1';
  todayDate: Date = new Date();
  amount: number = 0;
  tax: number = 0;
  miles: number = 0;
  allBills: Bill[];
  discount: boolean = false;
  currentBuyer: any;
  billObject: any;
    constructor(protected emartService: EmartService,
    protected router: Router, protected activatedRoute: ActivatedRoute) { }
  ngOnInit(): void {
    this.currentBuyer=  JSON.parse(localStorage.getItem('i1')); 
    this.cartItems = this.emartService.getAllCart();
    let size = this.cartItems.length;
    // for (let i = 0; i < size; i++) {
    //   this.amount = this.amount + this.cartItems[i].cost
    // }
    // this.amount += this.amount * 0.15;

    this.amount = this.cartItems[0].cost;
    this.tax = this.cartItems[0].cost * 0.15;
    if(size>1) {
      for (let i = 0; i+1 < size; i++) {
        if(this.cartItems[i].type != this.cartItems[i+1].type) {
          this.amount = (this.amount + this.cartItems[i+1].cost)*0.8;
          this.discount = true;
        } else {
          this.amount = this.amount + this.cartItems[i+1].cost;
        }
        this.tax += this.cartItems[i+1].cost * 0.15;
      }
    }
    this.amount += this.tax;
    for (let i = 0; i < size; i++) {
      this.miles = this.miles + this.cartItems[i].miles
    }
  }
  addBill() {
    this.emartService.addBill(this.todayDate, this.amount)

      .subscribe(
        (response) => {
          this.emartService.getBuyer()
            .subscribe(
              (response) => {
                this.currentBuyer = response;

                this.emartService.setBuyerAndBills(this.currentBuyer);
                this.emartService.getAllBills();
               this.emartService.getCurrentBuyer();  
              }
            )
        }
      );
    this.router.navigate(['bill-list']);
  }

  redeemMiles() {
    

    this.cartItems = this.emartService.getAllCart();
    let size = this.cartItems.length;
    this.emartService.getBuyer().subscribe((response) => {
      this.currentBuyer = response;
    });

    for (let i = 0; i < size; i++) {
      if(this.cartItems[i].flightType=='domestic' && this.currentBuyer.miles>=25000) {
        this.amount -= 100;
        this.currentBuyer.miles -= 25000;
        this.emartService.updateMiles(this.currentBuyer).subscribe();
      }
      else if(this.cartItems[i].flightType=='international' && this.currentBuyer.miles>=50000) {
        this.amount -= 200;
        this.currentBuyer.miles -= 50000;
        this.emartService.updateMiles(this.currentBuyer).subscribe();
      }
      else {
        window.alert("Sorry, you do not have enough miles to redeem");
      }
    }

  }
}
