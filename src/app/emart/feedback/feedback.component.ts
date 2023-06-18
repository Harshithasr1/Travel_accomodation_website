import { ActivatedRoute, Router } from '@angular/router';
import { Component, OnInit, ViewChild } from '@angular/core';
import { EmartService } from '../emart.service';
import { NgForm } from '@angular/forms';

import { Feedback } from '../feedback';
@Component({
  selector: 'app-feedback',
  templateUrl: './feedback.component.html',
  styleUrls: ['./feedback.component.css']
})
export class FeedbackComponent implements OnInit {
  @ViewChild('feedbackForm') public feedbackForm: NgForm;
  userid: number;
  message: string = '';
  rating: number;
  
  constructor(protected emartService: EmartService, protected activatedRoute: ActivatedRoute, protected router: Router) {

  }
  ngOnInit(): void {
    console.log("getcurrentbiyer call: " + JSON.stringify(this.emartService.getBuyer()));

    // console.log("method current buyer call "+ JSON.stringify(this.emartService.getCurrentBuyer()));
    console.log("currentbuyer : " + localStorage.getItem('i1'));
  }
    displayMessage() {
      this.router.navigate(['thanks']);
    }

    addFeedback() {
        let feedback: Feedback = {
          userid: this.userid,
          message: this.message,
          rating: this.rating
        };
        // console.log("inside addfeedback()");
        this.emartService.addFeedback(feedback).subscribe();
        // console.log("after calling serivce addFeedback()");
        this.router.navigate(['thanks']);
      }
}