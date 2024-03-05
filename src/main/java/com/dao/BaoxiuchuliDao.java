package com.dao;

import com.entity.BaoxiuchuliEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BaoxiuchuliVO;
import com.entity.view.BaoxiuchuliView;


/**
 * 报修处理
 * 
 * @author 
 * @email 
 * @date 2023-03-31 10:39:56
 */
public interface BaoxiuchuliDao extends BaseMapper<BaoxiuchuliEntity> {
	
	List<BaoxiuchuliVO> selectListVO(@Param("ew") Wrapper<BaoxiuchuliEntity> wrapper);
	
	BaoxiuchuliVO selectVO(@Param("ew") Wrapper<BaoxiuchuliEntity> wrapper);
	
	List<BaoxiuchuliView> selectListView(@Param("ew") Wrapper<BaoxiuchuliEntity> wrapper);

	List<BaoxiuchuliView> selectListView(Pagination page,@Param("ew") Wrapper<BaoxiuchuliEntity> wrapper);
	
	BaoxiuchuliView selectView(@Param("ew") Wrapper<BaoxiuchuliEntity> wrapper);
	

}
