import { Order } from './../../Order/models/order/order.module';
import { PaymentWaysComponent } from './../payment-ways/payment-ways.component';
import { Router } from '@angular/router';
import { TranslateService } from '@ngx-translate/core';
import { PaymentService } from '../../Services/payment.service';
import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { OrderService } from './../../Order/Service/order.service';
import { NavBarComponent } from '../nav-bar/nav-bar.component';

@Component({
  selector: 'app-confirm-order',
  standalone: true,
  imports: [NavBarComponent],
  templateUrl: './confirm-order.component.html',
  styleUrl: './confirm-order.component.css'
})
export class ConfirmOrderComponent implements OnInit {
Order:Order=JSON.parse(localStorage.getItem('PaymentOrder') as any) || [];
amount = 0;
Perom:string=" ";
AddressDe!:string;
  @ViewChild('paymentRef', {static: true}) paymentRef!: ElementRef;

  constructor(private OrderService: OrderService,private router: Router, private payment: PaymentService) { }

Peromo (num:string) {
  this.Perom=num;
  if (this.Perom==="123")
    {}
  }
Addres(Add:string) {
    if(Add!="")
      {
      this.Order.address = Add;
      this.OrderService.UpdateOrder(this.Order.id,this.Order).subscribe((d) => {});
      }
  }


  ngOnInit(): void {
    this.Order=JSON.parse(localStorage.getItem('PaymentOrder') as any) || [];
    this.amount =this.Order.finalPrice;
    
    window.paypal.Buttons(
      {
        style: {
          layout: 'horizontal',
          color: 'blue',
          shape: 'rect',
          label: 'paypal',
        },
        createOrder: (data: any, actions: any) => {
          return actions.order.create({
            purchase_units: [
              {
                amount: {
                  value: this.amount.toString(),
                  currency_code: 'USD'
                }
              }
            ]
          });
        },
        onApprove: (data: any, actions: any) => {
          return actions.order.capture().then((details: any) => {
            if (details.status === 'COMPLETED') {
              if(this.Perom=="123M")
                {
                  this.amount -=500;
                  this.Order.finalPrice-=500;
                }
              
              this.payment.transactionID = details.id;
              this.Order.state=4;
              this.OrderService.UpdateOrder(this.Order.id,this.Order).subscribe((d) => {});
              localStorage.removeItem('PaymentOrder');
              
            }
          });
        },
        onError: (error: any) => {
          console.log(error);
        }
      }
    ).render(this.paymentRef.nativeElement);
  }

  cancel() {
    this.router.navigate(['list']);
  }
  Vieworders() {
    this.router.navigate(['list']);
  }
}
