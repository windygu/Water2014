using System;
using System.Data;
using System.Data.SqlClient;

namespace LTP.Accounts.Data
{
    /// <summary>
    /// 角色管理
    /// </summary>    
    public class Role 
    {
        //public Role(string newConnectionString) 
        //{ }

        public Role()            
        { }


        /// <summary>
        /// 增加角色
        /// </summary>       
        public int Create(string description)
        {
            int rowsAffected;
            SqlParameter[] parameters = 
				{
					new SqlParameter("@Description", SqlDbType.VarChar, 50)
				};
            parameters[0].Value = description;
            return DbHelperSQL.RunProcedure("sp_Accounts_CreateRole", parameters, out rowsAffected);
        }

        /// <summary>
        /// 更新角色信息
        /// </summary>
        public bool Update(int roleId, string description)
        {
            int rowsAffected;
            SqlParameter[] parameters =
				{
					new SqlParameter("@RoleID", SqlDbType.Int, 4),
					new SqlParameter("@Description", SqlDbType.VarChar, 50)
				};
            parameters[0].Value = roleId;
            parameters[1].Value = description;
            DbHelperSQL.RunProcedure("sp_Accounts_UpdateRole", parameters, out rowsAffected);
            return (rowsAffected == 1);
        }
        /// <summary>
        /// 删除角色
        /// </summary>
        public bool Delete(int roleId)
        {
            int rowsAffected;
            SqlParameter[] parameters =
				{
					new SqlParameter("@RoleID", SqlDbType.Int, 4)
				};
            parameters[0].Value = roleId;
            DbHelperSQL.RunProcedure("sp_Accounts_DeleteRole", parameters, out rowsAffected);
            return (rowsAffected == 1);
        }

        /// <summary>
        /// 根据角色ID获取角色的信息
        /// </summary>
        public DataRow Retrieve(int roleId)
        {
            SqlParameter[] parameters =
				{
					new SqlParameter("@RoleID", SqlDbType.Int, 4)
				};

            parameters[0].Value = roleId;
            using (DataSet roles = DbHelperSQL.RunProcedure("sp_Accounts_GetRoleDetails", parameters, "Roles"))
            {
                return roles.Tables[0].Rows[0];
            }
        }
        
        /// <summary>
        /// 为角色增加权限
        /// </summary>
        public void AddPermission(int roleId, int permissionId)
        {
            int rowsAffected;
            SqlParameter[] parameters =
				{
					new SqlParameter("@RoleID", SqlDbType.Int, 4),
					new SqlParameter("@PermissionID", SqlDbType.Int, 4)
				};
            parameters[0].Value = roleId;
            parameters[1].Value = permissionId;
            DbHelperSQL.RunProcedure("sp_Accounts_AddPermissionToRole", parameters, out rowsAffected);
        }
        /// <summary>
        /// 从角色移除权限
        /// </summary>
        public void RemovePermission(int roleId, int permissionId)
        {
            int rowsAffected;
            SqlParameter[] parameters =
				{
					new SqlParameter("@RoleID", SqlDbType.Int, 4),
					new SqlParameter("@PermissionID", SqlDbType.Int, 4)
				};
            parameters[0].Value = roleId;
            parameters[1].Value = permissionId;
            DbHelperSQL.RunProcedure("sp_Accounts_RemovePermissionFromRole", parameters, out rowsAffected);
        }
        /// <summary>
        /// 清空角色的权限
        /// </summary>
        public void ClearPermissions(int roleId)
        {
            int rowsAffected;
            SqlParameter[] parameters =
				{
					new SqlParameter("@RoleID", SqlDbType.Int, 4),					
			};
            parameters[0].Value = roleId;
            DbHelperSQL.RunProcedure("sp_Accounts_ClearPermissionsFromRole", parameters, out rowsAffected);
        }

        /// <summary>
        /// 获取所有角色的列表
        /// </summary>
        public DataSet GetRoleList()
        {
            using (DataSet roles = DbHelperSQL.RunProcedure("sp_Accounts_GetAllRoles", new IDataParameter[] { }, "Roles"))
            {
                return roles;
            }
        }
    }
}
