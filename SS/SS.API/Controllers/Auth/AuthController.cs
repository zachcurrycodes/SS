using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SS.API.Business.Dtos.User;
using SS.API.Business.Interfaces;

namespace SS.API.Controllers.Auth
{
    [Route("api/[controller]")]
    [ApiController]
    [AllowAnonymous]
    public class AuthController : ControllerBase
    {
        private readonly IAuthRepository _auth;
        public AuthController(IAuthRepository auth) { _auth = auth; }

        [HttpPost("register")]
        public async Task<IActionResult> Register(UserForRegisterDto userForRegisterDto)
        {
            var result = await _auth.RegisterUser(userForRegisterDto);

            if (result.Succeeded)
            {
                var user = await _auth.GetUser(userForRegisterDto.UserName);
                var userToReturn = _auth.MapUserToUserForDetailDto(user);
                return CreatedAtRoute(
                    "GetUser",
                    new
                    {
                        controller = "Users",
                        userId = user.UserId
                    },
                    userToReturn);
            }

            return BadRequest(result.Errors);
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(UserForLoginDto userForLoginDto)
        {
            var user = await _auth.GetUser(userForLoginDto.UserName);
            var appUser = _auth.MapUserToUserForDetailDto(user);

            //
            //for testing ONLY
            if (user.UserName == "z")
            {
                return Ok(new
                {
                    token = _auth.GenerateJwtToken(user).Result,
                    appUser
                });
            }
            //

            var result = await _auth.CheckPasswordSignInAsync(user, userForLoginDto.Password);

            if (result.Succeeded)
            {
                return Ok(new
                {
                    token = _auth.GenerateJwtToken(user).Result,
                    appUser
                });
            }

            return Unauthorized();
        }
    }
}