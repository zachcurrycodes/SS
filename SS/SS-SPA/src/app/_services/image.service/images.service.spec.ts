/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { ImageService } from './images.service';

describe('Service: Images.service', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ImageService],
    });
  });

  it('should ...', inject([ImageService], (service: ImageService) => {
    expect(service).toBeTruthy();
  }));
});
