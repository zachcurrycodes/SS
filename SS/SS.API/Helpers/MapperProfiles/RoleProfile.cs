using AutoMapper;
using SS.API.Business.Dtos.Return;
using SS.API.Data.Models;

namespace SS.API.Helpers.MapperProfiles
{
    public class RoleProfile : Profile
    {
        public RoleProfile()
        {
            // Data to Dto
            CreateMap<Ssrole, RolesToReturnDto>()
               .ForMember(dest => dest.Id, opt =>
                   opt.MapFrom(src => src.Id));
        }
    }
}