using System;
using System.Collections.Generic;

namespace SS.API.Business.Dtos.Return
{
    public class ArtistForDetailedDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int? StatusId { get; set; }
        public DateTime CareerBeginDate { get; set; }
        public int YearsActive { get; set; }
        public bool Solo { get; set; }
        public int? UserId { get; set; }
        public bool Verified { get; set; }
        public string CurrentCity { get; set; }
        public string HomeCity { get; set; }
        public int MainPhotoId { get; set; }
        public List<int> PhotoIds { get; set; }
        public IEnumerable<PhotoforReturnDto> Photos { get; set; }
    }
}