package top.zzh.service;

import top.zzh.vo.BorrowDetailVO;

/**
 * Created by 曾志湖 on 2017/12/22.
 */
public interface BorrowDetailService extends BaseService {

    //修改图片
    void updateTupian(Object obj);
    BorrowDetailVO findDetails(Long baid);
}
