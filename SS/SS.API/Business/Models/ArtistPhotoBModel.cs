using System;

namespace SS.API.Business.Models
{
    public class ArtistPhotoBModel
    {
        public int ArtistPhotoId { get; set; }
        public int ArtistId { get; set; }
        public string PhotoPath { get; set; }
        public string PhotoDescription { get; set; }
        public string PhotoFileContentType { get; set; }
        public string PhotoFileExt { get; set; }
        public string PhotoFileName { get; set; }
        public DateTime DateAdded { get; set; }
        public bool IsMain { get; set; }
        public byte[] File { get; set; }
    }
}