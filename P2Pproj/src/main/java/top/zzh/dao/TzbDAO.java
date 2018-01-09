package top.zzh.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import top.zzh.bean.Tzb;
import top.zzh.common.Pager;
import top.zzh.vo.ControllerStatusVO;

import java.util.List;

/**
 * Created by 曾志湖 on 2017/12/22.
 * 投资表DAO
 */
@Repository
public interface TzbDAO extends BaseDAO {

    @Override
    List<Object> listPager(@Param("pager") Pager pager);

    @Override
    List <Object> listPagerCriteria(@Param("pager") Pager pager, @Param("query") Object obj);

    @Override
    Long countCriteria(@Param("query") Object obj);

    List<Object> listPagerById(@Param("pager") Pager pager,@Param("id") Long id);

    Long countById(@Param("id") Long id);

    List<Tzb> listTzb(@Param("uid") Long uid, @Param("baid") Long baid);

    ControllerStatusVO add(Object obj);
}
