﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AvtoLider.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class bdAvtoLiderEntities : DbContext
    {
        private static bdAvtoLiderEntities _context;
        public bdAvtoLiderEntities()
            : base("name=bdAvtoLiderEntities")
        {
        }
        public static bdAvtoLiderEntities GetContext()
        {
            if (_context == null)
                _context = new bdAvtoLiderEntities();
            return _context;
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Cars> Cars { get; set; }
        public virtual DbSet<Clients> Clients { get; set; }
        public virtual DbSet<Configuration> Configuration { get; set; }
        public virtual DbSet<LoginHistory> LoginHistory { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TypesOfCover> TypesOfCover { get; set; }
        public virtual DbSet<TypesOfRims> TypesOfRims { get; set; }
        public virtual DbSet<TypesOfTires> TypesOfTires { get; set; }
        public virtual DbSet<UserRoles> UserRoles { get; set; }
        public virtual DbSet<Users> Users { get; set; }
    }
}
