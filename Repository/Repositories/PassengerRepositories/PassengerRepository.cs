﻿using BusinessObjects.Models;
using DAO;

namespace Repository.Repositories.PassengerRepositories
{
    public class PassengerRepository : GenericDAO<Passenger>, IPassengerRepository
    {
        public async Task<List<Passenger>> GetAllPassenger()
        {
            var list = await Get();
            return list.ToList();
        }

        public async Task<Passenger> GetById(string id)
        {
            return await GetSingle(a => a.Id.Equals(id));
        }

        public async Task<List<Passenger>> GetByLogin(string id)
        {
            var result = await Get(a => a.UserId.Equals(id));
            return result.ToList();
        }





    }
}
