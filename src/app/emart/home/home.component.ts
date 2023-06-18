import { Router } from '@angular/router';
import { Component } from '@angular/core';
import { EmartService } from '..//emart.service';

@Component({
  selector: 'app-root',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {
//   title = 'sampleprog';
  sourceflight: string = '';
  destination: string = '';
  depdate: Date;
  retdate: string = '';
  npassengers : Number;
  errorMessage: string;
  flightDiv: any;
  hotelDiv: any;
  dealDiv: any;
  statusDiv: any;
  displayStatusDiv: any;
  flight: any;
  flightNum: string = '';
  city: string = '';
  nrooms: number;
  nadults: number;
  srccity: string = '';
  destcity: string = '';
  fromdate: Date;
  todate: Date;
  minprice: number;
  maxprice: number;
  allFlights: any;

  constructor(protected emartService: EmartService, 
    protected router: Router) { }

  ngOnInit(): void {
    this.errorMessage = "";
    
    this.flightDiv = document.getElementById("flightDiv");
    this.hotelDiv = document.getElementById("hotelDiv");
    this.dealDiv = document.getElementById("dealDiv");
    this.statusDiv = document.getElementById("statusDiv");
    this.displayStatusDiv = document.getElementById("display-status");

    this.emartService.getAllFlights().subscribe(
      (response: any) => {
        this.allFlights = response;
      }
    );
  }
  displayFlights() {
    this.router.navigate(['item-list'], {state: {source:this.sourceflight, destination:this.destination, depdate:this.depdate, npassengers: this.npassengers}});
  }

  displayHotels() {
    this.router.navigate(['hotel-list'], {state: {city:this.city, nrooms: this.nrooms}});
  }

  displayDeals() {
    this.router.navigate(['deal-list'], {state: {srccity:this.srccity, destcity:this.destcity, fromdate:this.fromdate, todate:this.todate, minprice:this.minprice, maxprice:this.maxprice}});
  }

  displayStatus() {

    this.emartService.getFlightStatus(this.flightNum).subscribe(
      response => {
        this.flight = response;
      });

    this.displayStatusDiv.style.display = "block";
  }

  showFlightDiv() {
    this.flightDiv.style.display = "flex";
    this.hotelDiv.style.display = "none";
    this.dealDiv.style.display = "none";
    this.statusDiv.style.display = "none";
    this.displayStatusDiv.style.display = "none";
  }

  showHotelDiv() {
    this.flightDiv.style.display = "none";
    this.hotelDiv.style.display = "flex";
    this.dealDiv.style.display = "none";
    this.statusDiv.style.display = "none";
    this.displayStatusDiv.style.display = "none";
  }

  showDealDiv() {
    this.flightDiv.style.display = "none";
    this.hotelDiv.style.display = "none";
    this.dealDiv.style.display = "flex";
    this.statusDiv.style.display = "none";
    this.displayStatusDiv.style.display = "none";
  }

  showStatusDiv() {
    this.flightDiv.style.display = "none";
    this.hotelDiv.style.display = "none";
    this.dealDiv.style.display = "none";
    this.statusDiv.style.display = "flex";
  }

}