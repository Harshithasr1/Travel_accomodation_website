import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { ItemListComponent } from './emart/item/item-list/item-list.component';
import { ItemDisplayComponent } from './emart/item/item-display/item-display.component';
import { CartListComponent } from './emart/cart/cart-list/cart-list.component';
import { BillViewComponent } from './emart/bill/bill-view/bill-view.component';
import { BillListComponent } from './emart/bill/bill-list/bill-list.component';
import { LoginComponent } from './emart/signup/login/login.component';
import { BuyerSignupComponent } from './emart/signup/buyer-signup/buyer-signup.component';
import { SellerSignupComponent } from './emart/signup/seller-signup/seller-signup.component';
import { HomeComponent } from './emart/home/home.component';
import { FeedbackComponent } from './emart/feedback/feedback.component';
import { ThanksComponent } from './emart/thanks/thanks.component';

import { HeaderComponent } from './emart/header/header.component';
import { LogoutComponent } from './emart/signup/logout/logout.component';
import { SignUpDeactivateService } from './sign-up-can-deactivate.service';
import { ErrorComponent } from './error/error.component';
import { EnterGuardService } from './enter-guard-service';
import { FlexLayoutModule } from '@angular/flex-layout';
import { MatTableModule } from '@angular/material/table';
import { MatPaginatorModule} from '@angular/material/paginator';
import {MatFormFieldModule} from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { HotelListComponent } from './emart/item/hotel-list/hotel-list.component';
import { DealListComponent } from './emart/item/deal-list/deal-list.component';



@NgModule({
  declarations: [
    AppComponent,
    ItemListComponent,
    ItemDisplayComponent,
    CartListComponent,
    DealListComponent,
    BillViewComponent,
    BillListComponent,
    LoginComponent,
    BuyerSignupComponent,
    SellerSignupComponent,
    HeaderComponent,
    HomeComponent,
    LogoutComponent,
    ErrorComponent,
    HotelListComponent,
    FeedbackComponent,
    ThanksComponent
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    FlexLayoutModule,
    MatTableModule,
    MatPaginatorModule,
    MatFormFieldModule,
    MatInputModule
    
  ],
  providers: [SignUpDeactivateService,EnterGuardService],
  bootstrap: [AppComponent]
})
export class AppModule { }
