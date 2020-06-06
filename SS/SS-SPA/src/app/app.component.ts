import { Component, OnInit } from '@angular/core';
import { JwtHelperService } from '@auth0/angular-jwt';
import { AuthService } from './_services/auth.service/auth.subject.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent implements OnInit {
  jwtHelper = new JwtHelperService();

  constructor(private _authService: AuthService) {}

  ngOnInit() {
    const token = localStorage.getItem('token');
    const decodedToken = this._authService.decodeToken(token);
    if (token) {
      this._authService.update({ decodedToken });
    }
  }
}
