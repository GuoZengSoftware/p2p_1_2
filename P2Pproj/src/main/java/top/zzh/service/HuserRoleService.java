package top.zzh.service;

import org.apache.ibatis.annotations.Param;
import top.zzh.bean.HUser;
import top.zzh.bean.Role;
import top.zzh.vo.Select2;

import java.util.List;

/**
 * Created by XIE Shanlin on 2018.01.09.
 */
public interface HuserRoleService extends BaseService{

    List<HUser> hUserList();
    List<Role> hRoleList();
    void save(String hHuserId, String roleList);

    //通过Id查询该用户的所有角色
    List<Role> hRoleByHuserIdList(@Param("hUserId") Integer hUserId);


}