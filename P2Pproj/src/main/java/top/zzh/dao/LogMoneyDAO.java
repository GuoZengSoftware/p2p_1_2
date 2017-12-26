package top.zzh.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import top.zzh.common.Pager;

import java.util.List;

/**
 * Created by 曾志湖 on 2017/12/22.
 * 资金流向表DAO
 */
@Repository
public interface LogMoneyDAO extends BaseDAO{
    @Override
    List<Object> listPager(@Param("pager") Pager pager);
}
