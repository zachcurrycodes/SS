using AutoMapper;
using SS.API.Dtos;
using SS.API.Models;

namespace SS.API.Helpers.MapperProfiles
{
    public class UserProfile : Profile
    {
        public UserProfile()
        {
            CreateMap<Ssuser, UserforDetailDto>();
            CreateMap<UserForRegisterDto, Ssuser>()
                .ForMember(dest => dest.DisplayName, opt =>
                        opt.MapFrom(src => src.FirstName))
                .ForMember(dest => dest.CreatedDate, opt =>
                        opt.MapFrom(src => src.Created));
            CreateMap<Ssuser, UserforDetailDto>()
                .ForMember(dest => dest.Created, opt =>
                        opt.MapFrom(src => src.CreatedDate));
        }
    }
}