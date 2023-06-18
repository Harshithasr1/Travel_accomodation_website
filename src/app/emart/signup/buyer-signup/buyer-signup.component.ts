import { Component, OnInit, ViewChild } from '@angular/core';
import { Buyer } from '../../buyer';
import { Router } from '@angular/router';
import { EmartService } from '../../emart.service';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-buyer-signup',
  templateUrl: './buyer-signup.component.html',
  styleUrls: ['./buyer-signup.component.css']
})
export class BuyerSignupComponent implements OnInit {

  @ViewChild('signUpForm') public buyerSignupForm: NgForm;
  firstname: string = '';
  middlename: string = '';
  lastname: string = '';
  address: string = '';
  email: string = '';
  buyerusername: string = '';
  buyerpassword: string = '';
  creditcardtype: string = '';
  cardnumber: number;
  expiration: string = '';
  cvv: number;
  miles: number = 0;
  buyers: any;
  buyerresponse: any
  constructor(protected emartService: EmartService, protected router: Router) {
   }
  ngOnInit(): void {
  }
  
  addBuyer() {
    let buyer: Buyer = {
      id: 0,
      firstname: this.firstname,
      middlename: this.middlename,
      lastname: this.lastname,
      address: this.address,
      email: this.email,
      username: this.buyerusername,
      password: this.buyerpassword,
      creditcardtype: this.creditcardtype,
      cardnumber: this.cardnumber,
      expiration: this.expiration,
      cvv: this.cvv,
      miles: this.miles
    };

    this.emartService.addBuyer(buyer).subscribe();
    this.router.navigate(['/']);
  }
}
