package top.zzh.dao;

import org.springframework.stereotype.Repository;
import java.util.*;
/**
 * Created by 曾志湖 on 2017/12/22.
 * 还款表DAO
 */
@Repository
public interface HkbDAO extends BaseDAO{

    Long saveList(List hkbList);
}
