package top.zzh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import top.zzh.bean.Friend;
import top.zzh.bean.Home;
import top.zzh.bean.Notice;
import top.zzh.common.Pager;
import top.zzh.service.BorrowApplyService;
import top.zzh.service.FriendService;
import top.zzh.service.NoticeService;
import top.zzh.service.*;
import top.zzh.vo.BorrowDetailVO;
import top.zzh.vo.NoticeVo;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * 首页控制器
 */
@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    private FriendService friendService;

    @Autowired
    private NoticeService noticeService;

import top.zzh.vo.NoticeVo;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * 首页控制器
 */
@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    private FriendService friendService;

    @Autowired
    private NoticeService noticeService;

    @Autowired
    private BorrowApplyService borrowApplyService;
    @Autowired
    private HomeService homeService;

    @Autowired
    MediaService mediaService;

    @Autowired
    DynamicService dynamicService;


    @RequestMapping("")
    public ModelAndView index(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        List<BorrowDetailVO> borrow1 = (List)borrowApplyService.souye1();
        List<BorrowDetailVO> borrow2 = (List)borrowApplyService.souye2();
        List<BorrowDetailVO> borrow3 = (List)borrowApplyService.souye3();
        List<BorrowDetailVO> borrow4 = (List)borrowApplyService.souye4();
        List<Friend> friendList = new ArrayList<Friend>();
        friendList = friendService.listFriend();
        List<Object> homeList = new ArrayList<>();
        homeList = homeService.listAll();
        List<Object> noticeList = new ArrayList<>();
        List<Object> mediaList = new ArrayList<>();
        List<Object> dynamicList = new ArrayList<>();
        int pageIndex = 0;
        int pageSize = 5;
        noticeList = noticeService.listNotice(pageIndex,pageSize);
        modelAndView.addObject("borrow1",borrow1);
        modelAndView.addObject("borrow2",borrow2);
        modelAndView.addObject("borrow3",borrow3);
        modelAndView.addObject("borrow4",borrow4);
        modelAndView.addObject("noticeList",noticeList);
        modelAndView.addObject("friendList",friendList);
        modelAndView.setViewName("index");
        return modelAndView;
        mediaList = mediaService.listMedia(pageIndex,pageSize);
        dynamicList = dynamicService.listDynamic(pageIndex,pageSize);

        request.setAttribute("noticeList",noticeList);
        request.setAttribute("friendList",friendList);
        request.setAttribute("homeList",homeList);
        request.setAttribute("mediaList", mediaList);
        request.setAttribute("dynamicList", dynamicList);
        return "index";
    }



}
