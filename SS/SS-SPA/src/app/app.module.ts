import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { BrowserModule } from '@angular/platform-browser';
import { BsDropdownModule, TabsModule } from 'ngx-bootstrap';
import { FileUploadModule } from 'ng2-file-upload';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { JwtModule } from '@auth0/angular-jwt';
import { NgModule } from '@angular/core';
import { NgxGalleryModule } from '@kolkov/ngx-gallery';
import { RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { AppRoutes } from './routes';

import { AuthGuard } from './_guards/auth.guard';
import { PreventUnsavedChanges } from './_guards/prevent-unsaved-changes.guard';

import { ArtistEditResolver } from './_resolver/artist-edit.resolver';
import { ArtistListResolver } from './_resolver/artist-list.resolver';
import { ArtistDetailResolver } from './_resolver/artist-detail.resolver';

import { ErrorInterceptorProvider } from './_services/_error.interceptor/error.interceptor';
import { AlertifyService } from './_services/alertify.service/alertify.service';
import { ArtistService } from './_services/artist.service/artist.service';
import { AuthService } from './_services/auth.service/auth.service';
import { ImageService } from './_services/images.service';

import { ArtistCardComponent } from './artist/artist-card/artist-card.component';
import { ArtistDetailComponent } from './artist/artist-detail/artist-detail.component';
import { ArtistEditComponent } from './artist/artist-edit/artist-edit.component';
import { ArtistListComponent } from './artist/artist-list/artist-list.component';
import { BeersComponent } from './beers/beers.component';
import { HomeComponent } from './home/home.component';
import { NavComponent } from './nav/nav.component';
import { PhotoEditorComponent } from './artist/photo-editor/photo-editor.component';
import { RegisterComponent } from './register/register.component';
import { VenuesComponent } from './venues/venues.component';

export function tokenGetter() {
  return localStorage.getItem('token');
}

@NgModule({
  declarations: [
    AppComponent,
    ArtistCardComponent,
    ArtistDetailComponent,
    ArtistEditComponent,
    ArtistListComponent,
    BeersComponent,
    HomeComponent,
    NavComponent,
    PhotoEditorComponent,
    RegisterComponent,
    VenuesComponent,
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    BrowserAnimationsModule,
    BsDropdownModule.forRoot(),
    TabsModule.forRoot(),
    RouterModule.forRoot(AppRoutes),
    NgxGalleryModule,
    FileUploadModule,
    JwtModule.forRoot({
      config: {
        tokenGetter,
        whitelistedDomains: ['localhost:5000', '192.168.1.25:700'],
        blacklistedRoutes: [
          'localhost:5000/api/auth',
          '192.168.1.25:700/api/auth',
        ],
      },
    }),
  ],
  providers: [
    AuthService,
    ErrorInterceptorProvider,
    AlertifyService,
    AuthGuard,
    ArtistService,
    ArtistDetailResolver,
    ArtistListResolver,
    ArtistEditResolver,
    PreventUnsavedChanges,
    ImageService,
  ],
  bootstrap: [AppComponent],
})
export class AppModule {}
