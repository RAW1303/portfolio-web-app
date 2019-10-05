import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'raw-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  public isNavbarExpanded: boolean;

  constructor() { }

  ngOnInit() {
  }

}
