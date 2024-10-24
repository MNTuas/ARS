﻿using BusinessObjects.RequestModels.User;
using BusinessObjects.ResponseModels.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.Services.UserServices
{
    public interface IUserService
    {
        Task<List<UserInfoResponseModel>> GetAllUserExceptAdmin();
        Task<UserInfoResponseModel> GetUserInfoById(string id);
        Task<UserInfoResponseModel> GetOwnUserInfo(string token);
        Task EditOwnInfo(string token, UserInfoUpdateModel model);
        Task UpdateUserStatus(string id, string status);
        Task SendEmailWhenForgotPassword(string email);
    }
}
