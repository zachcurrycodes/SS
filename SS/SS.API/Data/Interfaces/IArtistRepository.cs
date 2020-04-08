using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;
using SS.API.Models;

namespace SS.API.Data
{
    public interface IArtistRepository
    {
        void Add<T>(T entity) where T : class;
        void Delete<T>(T entity) where T : class;
        Task<bool> SaveAll();
        Task<IEnumerable<Artist>> GetArtists();
        Task<Artist> GetArtist(int id);
        Task<ArtistPhoto> GetPhoto2(int id);
        Task<ArtistPhoto> GetArtistPhoto(int artistId, int photoId);
        Task<Byte[]> GetPhoto(ArtistPhoto artistPhoto);
    }
}