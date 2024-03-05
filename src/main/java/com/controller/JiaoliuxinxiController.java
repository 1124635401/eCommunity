package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.JiaoliuxinxiEntity;
import com.entity.view.JiaoliuxinxiView;

import com.service.JiaoliuxinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 交流信息
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-31 10:39:56
 */
@RestController
@RequestMapping("/jiaoliuxinxi")
public class JiaoliuxinxiController {
    @Autowired
    private JiaoliuxinxiService jiaoliuxinxiService;


    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JiaoliuxinxiEntity jiaoliuxinxi,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date jiaoliuriqistart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date jiaoliuriqiend,
		HttpServletRequest request){
        EntityWrapper<JiaoliuxinxiEntity> ew = new EntityWrapper<JiaoliuxinxiEntity>();
                if(jiaoliuriqistart!=null) ew.ge("jiaoliuriqi", jiaoliuriqistart);
                if(jiaoliuriqiend!=null) ew.le("jiaoliuriqi", jiaoliuriqiend);

        String tableName = request.getSession().getAttribute("tableName").toString();
        ew.andNew();
        if(tableName.equals("yezhu")) {
            ew.eq("yonghuming", (String)request.getSession().getAttribute("username"));
        }
        if(tableName.equals("yezhu")) {
            ew.or();
            ew.eq("fayanren", (String)request.getSession().getAttribute("username"));
        }
		PageUtils page = jiaoliuxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiaoliuxinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JiaoliuxinxiEntity jiaoliuxinxi, 
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date jiaoliuriqistart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date jiaoliuriqiend,
		HttpServletRequest request){
        EntityWrapper<JiaoliuxinxiEntity> ew = new EntityWrapper<JiaoliuxinxiEntity>();
                if(jiaoliuriqistart!=null) ew.ge("jiaoliuriqi", jiaoliuriqistart);
                if(jiaoliuriqiend!=null) ew.le("jiaoliuriqi", jiaoliuriqiend);

		PageUtils page = jiaoliuxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiaoliuxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JiaoliuxinxiEntity jiaoliuxinxi){
       	EntityWrapper<JiaoliuxinxiEntity> ew = new EntityWrapper<JiaoliuxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jiaoliuxinxi, "jiaoliuxinxi")); 
        return R.ok().put("data", jiaoliuxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JiaoliuxinxiEntity jiaoliuxinxi){
        EntityWrapper< JiaoliuxinxiEntity> ew = new EntityWrapper< JiaoliuxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jiaoliuxinxi, "jiaoliuxinxi")); 
		JiaoliuxinxiView jiaoliuxinxiView =  jiaoliuxinxiService.selectView(ew);
		return R.ok("查询交流信息成功").put("data", jiaoliuxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JiaoliuxinxiEntity jiaoliuxinxi = jiaoliuxinxiService.selectById(id);
        return R.ok().put("data", jiaoliuxinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JiaoliuxinxiEntity jiaoliuxinxi = jiaoliuxinxiService.selectById(id);
        return R.ok().put("data", jiaoliuxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JiaoliuxinxiEntity jiaoliuxinxi, HttpServletRequest request){
    	jiaoliuxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiaoliuxinxi);
        jiaoliuxinxiService.insert(jiaoliuxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JiaoliuxinxiEntity jiaoliuxinxi, HttpServletRequest request){
    	jiaoliuxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiaoliuxinxi);
        jiaoliuxinxiService.insert(jiaoliuxinxi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody JiaoliuxinxiEntity jiaoliuxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jiaoliuxinxi);
        jiaoliuxinxiService.updateById(jiaoliuxinxi);//全部更新
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jiaoliuxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<JiaoliuxinxiEntity> wrapper = new EntityWrapper<JiaoliuxinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = jiaoliuxinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
