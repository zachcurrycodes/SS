using AutoMapper;
using SS.API.Business.Dtos.Role;
using SS.API.Business.Models;
using SS.API.Data.Models;

namespace SS.API.Helpers.MapperProfiles
{
    public class RoleProfile : Profile
    {
        public RoleProfile()
        {
            //Data to Business
            CreateMap<Ssrole, RoleBModel>()
                .ForMember(dest => dest.Id, opt =>
                    opt.MapFrom(src => src.RoleId)); // or is it src.Id?
        }
    }
}