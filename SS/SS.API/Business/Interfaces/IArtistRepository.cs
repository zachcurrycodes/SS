using System.Collections.Generic;
using System.Threading.Tasks;
using SS.API.Business.Dtos.Artist;
using SS.API.Business.Dtos.Photo;
using SS.API.Business.Models;
using SS.API.Helpers.Pagination;
using SS.API.Helpers.Pagination.PagedParams;

namespace SS.API.Business.Interfaces
{
    public interface IArtistRepository
    {
        Task<ArtistForDetailedDto> GetArtistById(int artistId);
        Task<PagedList<ArtistBModel>> GetArtists(ArtistParams artistParams);
        IEnumerable<ArtistForListDto> MapArtistsToDto(PagedList<ArtistBModel> artists);
        Task<ArtistPhotoBModel> GetArtistPhotoByArtistId(int artistId);
        Task<bool> UpdateArtist(int artistId, ArtistForUpdateDto artistForUpdateDto);
        Task<PhotoforReturnDto> GetArtistPhotoByPhotoId(int artistPhotoId);
        Task<bool> UploadPhoto(int artistId, PhotoForCreationDto photoForCreationDto);
        Task<PhotoforReturnDto> GetMostRecentArtistPhoto(int artistId);
        Task<bool> SetNewMainPhoto(int artistId, int artistPhotoId);
        Task<bool> DeletePhoto(int artistPhotoId);
    }
}