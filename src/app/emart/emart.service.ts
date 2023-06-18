import { Injectable } from '@angular/core';
import { Category } from './category';
import { SubCategory } from './sub-category';
import { Item } from './item';
import { Bill } from './bill';
import { Seller } from './seller';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Buyer } from './buyer';
import { Feedback } from './feedback';

@Injectable({
  providedIn: 'root'
})
export class EmartService {
  categories: Category[];
  subCategories: SubCategory[];
  allItems: Item[];
  // allHotels: Item[];
  cartItems: any[];
  allBills: any;
  allSellers: Seller[];
  currentBuyer: any;
  allBuyers: Buyer[];

  constructor(protected http: HttpClient) {
    this.cartItems = [];
    this.allBills = [];
  }

  //Accessing end point for retrieving all items.
  getAllItems() {
    return this.http.get("http://localhost:8063/emart/item/all");
  }
  getAllFlights() {
    return this.http.get("http://localhost:8063/flight/all");
  }

  getFlightStatus(flightNumber: string) {
    return this.http.get("http://localhost:8063/flight/flight-status/" + flightNumber);
  }

  getFlights(source: string, destination: string, depdate: Date) {
    return this.http.get("http://localhost:8063/flight/flight-list/" + source + "/" + destination + "/" + depdate);
  }

  getAllHotels() {
    return this.http.get("http://localhost:8063/hotel/hotel/all");
  }

  getHotels(city: string) {
    return this.http.get("http://localhost:8063/hotel/hotel-list/" + city);
  }

  getDeals(source: string, destination: string, fromdate: Date, todate: Date, minprice: number, maxprice: number) {
    return this.http.get("http://localhost:8063/deal/deal-list/" + source + "/" + destination + "/" + fromdate + "/" + todate + "/" + minprice + "/" + maxprice);
  }


  getCategories(): Category[] {
    return [].concat(this.categories);
  }

  getSubCategories(): SubCategory[] {
    return [].concat(this.subCategories);
  }

  getAllBills(): Bill[] {

    //i2:local storage for 
    localStorage.setItem('i2', JSON.stringify(this.allBills));
    return this.allBills;
  }
  //Accessing end point for retrieving an item.
  getItem(id: string): any {
    return this.http.get("http://localhost:8063/emart/item/" + id);
  }

  addToCart(itemObj: any) {
    this.cartItems.push(itemObj);
  }

  getAllCart() {
    return [].concat(this.cartItems);
  }

  setAllCart(cartItems: any) {
    this.cartItems = cartItems;
  }

  deleteCartItem(itemNo: number) {
    let size = this.cartItems.length;
    for (let i = 0; i < size; i++) {
      if (this.cartItems[i].id == itemNo) {
        this.cartItems.splice(i, 1);
        break;
      }
    }
    return [].concat(this.cartItems);
  }

  //Accessing end point for adding the bill. 
  addBill(todayDate: Date, total: number) {
    let allBillDetails: any[] = [];

    for (let i = 0; i < this.cartItems.length; i++) {
      if (this.cartItems[i].type == "hotel") {
        allBillDetails.push(
          {
            billDetailsId: 0,
            bill: null,
            hotel: this.cartItems[i]

          }
        );
      }

      else {
        allBillDetails.push(
          {
            billDetailsId: 0,
            bill: null,
            item: this.cartItems[i]

          }
        );
      }
    }
    //i1:local storage for current buyer
    let a = JSON.parse(localStorage.getItem('i1'));
    let bill: any = {
      id: 0,
      type: 'credit',
      date: todayDate,
      remarks: '',
      amount: total,
      buyer: {
        id: a.id
      },
      allBillDetails: allBillDetails
    }
    this.cartItems = [];
    allBillDetails = [];
    return this.http.post("http://localhost:8063/emart/bill", bill);
  }
  setBuyerAndBills(currentBuyer: any) {
    this.currentBuyer = currentBuyer;
    this.allBills = currentBuyer.allBills;
  }

  addBuyer(buyer: Buyer) {
    return this.http.post("http://localhost:8089/buyer", buyer);
  }

  addFeedback(feedback: Feedback) {
    console.log("enart service addFeedback");
    return this.http.post("http://localhost:8063/feedback", feedback);
  }


  //Accessing end point for buyer and retrieving its observable.
  getBuyer() {
    //i1:local storage for current buyer
    let curUser = JSON.parse(localStorage.getItem('i1'));
    return this.http.get("http://localhost:8082/emart/buyer/" + curUser.id);
  }

  getCurrentBuyer() {
    //i1:local storage for current buyer
    localStorage.setItem('i1', JSON.stringify(this.currentBuyer));
    return this.currentBuyer;
  }
  existBuyer() {
    //i1:local storage for current buyer
    //localStorage.setItem('i1', JSON.stringify(this.currentBuyer));
    return sessionStorage.getItem('key');
  }

  //Accessing end point for validating the buyer credintionals.
  validateBuyer(username: string, password: string) {
    let credentials = username + ":" + password;
    let headers = new HttpHeaders();
    headers = headers.set("Authorization", credentials);
    return this.http.get("http://localhost:8082/emart/validate", { headers });
  }

  updateMiles(buyer: Buyer) {
    return this.http.post("http://localhost:8063/emart/updatemiles/", buyer);
  }
}
