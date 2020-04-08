using SS.API.Dtos;
using SS.API.Models;
using AutoMapper;
using System.Linq;

namespace SS.API.Helpers.MapperProfiles
{
    public class ArtistProfile : Profile
    {
        public ArtistProfile()
        {
            CreateMap<Artist, ArtistForListDto>()
                .ForMember(dest => dest.Id, opt =>
                    opt.MapFrom(src => src.ArtistId))
                .ForMember(dest => dest.Name, opt =>
                    opt.MapFrom(src => src.ArtistName))
                .ForMember(dest => dest.PhotoPath, opt =>
                    opt.MapFrom(src => src.ArtistPhoto.FirstOrDefault(p => p.IsMain).PhotoPath))
                .ForMember(dest => dest.YearsActive, opt =>
                    opt.MapFrom(src => src.CareerBeginDate.CalculateArtistYearsActive()));
            CreateMap<Artist, ArtistForDetailedDto>()
                .ForMember(dest => dest.Id, opt =>
                    opt.MapFrom(src => src.ArtistId))
                .ForMember(dest => dest.Name, opt =>
                    opt.MapFrom(src => src.ArtistName))
                .ForMember(dest => dest.PhotoPath, opt =>
                    opt.MapFrom(src => src.ArtistPhoto.FirstOrDefault(p => p.IsMain).PhotoPath))
                .ForMember(dest => dest.Photos, opt =>
                    opt.MapFrom(src => src.ArtistPhoto))
                .ForMember(dest => dest.YearsActive, opt =>
                    opt.MapFrom(src => src.CareerBeginDate.CalculateArtistYearsActive()));
            CreateMap<ArtistForUpdateDto, Artist>()
                .ForMember(dest => dest.ArtistName, opt =>
                    opt.MapFrom(src => src.Name));
        }
    }
}