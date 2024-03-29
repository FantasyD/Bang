package com.system.tools;

import java.io.File;
import java.security.MessageDigest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import com.system.db.DBUtils;
import com.system.talk.Users;

public class Tools
{
	public static void main(String[] args) 
	{
		try 
		{
			//String aab103=Tools.getaab106();
			//System.out.println(aab103);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	private Tools() {}
	
	/**
	 * 创建code
	 */
	public static void setCode(String Email) 
	{
		String[] letters = new String[] {"0","1","2","3","4","5","6","7","8","9"};
		
		StringBuilder code = new StringBuilder();
		for (int i = 0; i < 6; i++) {
			code.append(letters[(int)Math.floor(Math.random()*letters.length)]);
		}
		
		Users.verification_code.put(Email, code.toString());
	}
	/***************************************************************************
	 *                    MD5Begin
	 ***************************************************************************/
	
	
	   public static String getMd5(Object pwd)throws Exception
	   {
			/**
			 * MD5二次混淆加密
			 */
			//完成原始加密
			String md5pwd1=Tools.MD5Encode(pwd);
			//生成混淆明文
			String pwd2=md5pwd1+"隐技フャゥソツ巧ΧΤΚㄕㄣˇΒ于无形:以無にはたコをっㄘㄗㄡεωぅ法為有法,以無ㄤㄆмязр限為有限"+md5pwd1;
			String md5pwd2=Tools.MD5Encode(pwd2);
			return md5pwd2;

	   }
	
	   
	    private final static String[] hexDigits = {
		     "0", "1", "2", "3", "4", "5", "6", "7",
		     "8", "9", "a", "b", "c", "d", "e", "f"
		     };

		  /**
		   * 转换字节数组为16进制字串
		   * @param b 字节数组
		   * @return 16进制字串
		   */
		  private static String byteArrayToHexString(byte[] b)
		  {
		      StringBuffer resultSb = new StringBuffer();
		      for (int i = 0; i < b.length; i++)
		      {
		         resultSb.append(byteToHexString(b[i]));
		      }
		      return resultSb.toString();
		  }
		  /**
		   * 转换字节为16进制字符串
		   * @param b byte
		   * @return String
		   */
		  private static String byteToHexString(byte b)
		  {
		      int n = b;
		      if (n < 0)
		         n = 256 + n;
		      int d1 = n / 16;
		      int d2 = n % 16;
		      return hexDigits[d1] + hexDigits[d2];
		  }
		  /**
		   * 得到MD5的秘文密码
		   * @param origin String
		   * @throws Exception
		   * @return String
		   */
		  private static String MD5Encode(Object origin) throws Exception
		  {
		       String resultString = null;
		       try
		       {
		           resultString=new String(origin.toString());
		           MessageDigest md = MessageDigest.getInstance("MD5");
		           resultString=byteArrayToHexString(md.digest(resultString.getBytes()));
		           return resultString;
		       }
		       catch (Exception ex)
		       {
		          throw ex;
		       }
		  }	
	/***************************************************************************
	 *                    MD5End
	 ***************************************************************************/
	

	/**
	 * 
	 * @Description: 获取用户编号
	 * @return	String number="yyyy"+4位流水码
	 * @throws Exception
	 */
	public static String getEmpNumber(String name)throws Exception
	{
		return Tools.getCurrentYear()+Tools.getFormatNumber(name);
	}

	private static final String baseCode1 = "0000";

	/**
	 * 获取格式化的尾码
	 * 
	 * @param firstName
	 * @return
	 * @throws Exception
	 */
	private static String getFormatNumber(String firstName) throws Exception
	{
		// 1.获取流水号
		int lastNumber = Tools.getNumnberForYear(firstName);
		// 2.计算流水号的宽度
		int size = String.valueOf(lastNumber).length();

		return baseCode1.substring(size) + lastNumber;

	}

	/**
	 * 获取员工编号的尾码
	 * 
	 * @param firstName
	 * @return
	 * @throws Exception
	 */
	private static int getNumnberForYear(String firstName) throws Exception
	{
		PreparedStatement pstm1 = null;
		PreparedStatement pstm2 = null;
		ResultSet rs = null;
		try
		{
			// 1.定义SQL语句查询当前值
			StringBuilder sql1 = new StringBuilder().append("select a.pkid ").append("  from sequence a ")
					.append("  where date_format(a.sdate,'%Y')=date_format(current_date,'%Y')")
					.append("    and a.pkname=?");
			pstm1 = DBUtils.prepareStatement(sql1.toString());
			pstm1.setObject(1, firstName);
			rs = pstm1.executeQuery();

			int currentVal = 0;
			StringBuilder sql2 = new StringBuilder();
			if (rs.next())
			{
				currentVal = rs.getInt(1);
				sql2.append("update sequence ").append("   set pkid=?")
						.append(" where date_format(sdate,'%Y')=date_format(current_date,'%Y')")
						.append("   and pkname=?");
			} else
			{
				sql2.append("insert into sequence(pkid,pkname,sdate)")
						.append("              values(?,?,current_date)");
			}
			pstm2 = DBUtils.prepareStatement(sql2.toString());
			pstm2.setObject(1, ++currentVal);
			pstm2.setObject(2, firstName);
			pstm2.executeUpdate();

			return currentVal;
		} finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm1);
			DBUtils.close(pstm2);
		}

	}

	/**
	 * 获取年码
	 * 
	 * @return
	 */
	private static String getCurrentYear()
	{
//		//实例化日期格式类
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
//		//获取系统当前日期
//		Date d=new Date();
//		//格式化当前日期
//		String str_date=sdf.format(d);
//		return str_date;

		return new SimpleDateFormat("yyyy").format(new java.util.Date());
	}

	/**
	 * 将数组连接成字符串
	 * 
	 * @param element
	 * @return
	 */
	public static String joinArray(Object element)
	{
		// 空值拦截
		if (element == null || element.equals(""))
		{
			return "";
		}

		// 判断element到底是什么?是字符串还是字符串数组
		if (element instanceof java.lang.String[])
		{
			// 将参数转换成字符串数组
			String arr[] = (String[]) element;
			// 计算数组长度
			int len = arr.length;
			// 构造动态字符串对象,装载数组的每个元素
			StringBuilder tem = new StringBuilder(arr[0]);
			// 循环读取数组的后继元素
			for (int i = 1; i < len; i++)
			{
				tem.append(",").append(arr[i]);
			}
			return tem.toString();
		} else
		{
			return element.toString();
		}

	}

	/**
	 * 创建数据传输对象
	 * 
	 * @param request
	 * @return
	 * @throws Exception 
	 */
	public static Map<String, Object> createDto(HttpServletRequest request) throws Exception
	{
		// 1.获取页面数据
		Map<String, String[]> tem = request.getParameterMap();
		int initSize = ((int) (tem.size() / 0.75)) + 1;
		// 2.导出所有键值对,形成键值对集合
		Set<Entry<String, String[]>> entrySet = tem.entrySet();
		// 3.定义数组,表示Enetry的value部分
		String value[] = null;

		// 4.定义DTO容器
		Map<String, Object> dto = new HashMap<>(initSize);
		// 5.循环读取entrySet,获取每个键值对
		for (Entry<String, String[]> entry : entrySet)
		{
			// 获取value部分的数组
			value = entry.getValue();
			// 依据长度判断页面控件的类别
			if (value.length == 1) // 非checkbox类控件
			{
				// 过滤掉页面未填充项目
				if (value[0] != null && !value[0].equals(""))
				{
					dto.put(entry.getKey(), value[0]);
				}
			} else // checkbox类控件
			{
				dto.put(entry.getKey(), value);
			}
		}
		// System.out.println(dto);
		dto.put("imgpath", uploadImg(request));
		return dto;
	}

	/**
	 * 该方法用来上传图片文件并且存储到本地服务器
	 * 
	 * @param req
	 * @return
	 * @throws Exception
	 */
	public static String uploadImg(HttpServletRequest req) throws Exception
	{
		req.setCharacterEncoding("gbk");
		// 解析和检查请求，是否是post方式，是否是二进制流格式
		Boolean isMultipart = ServletFileUpload.isMultipartContent(req);
		if (!isMultipart)
		{
			return null; // 如果不是就不用上传了
		}
		String path = null;
		try
		{
			// 创建FileItemFactory对象
			FileItemFactory factory = new DiskFileItemFactory();
			// 创建文件上传的处理器
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 解析请求
			List<FileItem> items = upload.parseRequest(req);
			// 迭代出每一个FileItem
			for (FileItem item : items)
			{
				String fileName = item.getFieldName();
				if (item.isFormField())
				{
					// 普通的表单控件
					String value = item.getString("gbk");
					
				} 
				else
				{
					// 上传文件的控件
					String RandomName = UUID.randomUUID().toString() + "."
							+ FilenameUtils.getExtension(item.getName());
					path = req.getServletContext().getRealPath("/upload/");
					item.write(new File(path, RandomName)); // 把上传的文件保存到某个文件中
					path = "upload/" + RandomName;
				}
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return path;
	}

	/**
	 * 获取主键值
	 * 
	 * @param pkname
	 * @return
	 * @throws Exception
	 */
	public static int getSequence(String pkname) throws Exception
	{
		PreparedStatement pstm1 = null; // 查询序列的当前值
		PreparedStatement pstm2 = null; // 修改序列的当前值
		ResultSet rs = null;
		try
		{
			// 定义SQL语句,查询序列的当前值
			String sql1 = "select a.pkvalue from sequence a where a.pkname=?";
			// 编译SQL1
			pstm1 = DBUtils.prepareStatement(sql1);
			// 参数赋值
			pstm1.setObject(1, pkname);
			// 执行查询
			rs = pstm1.executeQuery();

			// 定义序列当前值
			int currentVal = 0;
			// 判断数据库中,是否存在当前列的值
			if (rs.next())
			{
				// 读取数据库当前值,为序列赋值
				currentVal = rs.getInt(1);

				// 修改数据中的值,在原来基础上+1
				String sql2 = "update sequence set pkvalue=? where pkname=?";
				pstm2 = DBUtils.prepareStatement(sql2);
				pstm2.setObject(1, ++currentVal);
				pstm2.setObject(2, pkname);
				pstm2.executeUpdate();

			} else
			{
				// 向数据库录入当前主键的数据,pkvalue值为1
				String sql2 = "insert into sequence(pkname,pkvalue) values(?,?)";
				pstm2 = DBUtils.prepareStatement(sql2);
				pstm2.setObject(1, pkname);
				pstm2.setObject(2, ++currentVal);
				pstm2.executeUpdate();
			}

			return currentVal;

		} finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm1);
			DBUtils.close(pstm2);
		}
	}
	
	
	public static int getSequenceWithoutAdd(String pkname) throws Exception
	{
		PreparedStatement pstm1 = null; // 查询序列的当前值
		PreparedStatement pstm2 = null; // 修改序列的当前值
		ResultSet rs = null;
		try
		{
			// 定义SQL语句,查询序列的当前值
			String sql1 = "select a.pkvalue from sequence a where a.pkname=?";
			// 编译SQL1
			pstm1 = DBUtils.prepareStatement(sql1);
			// 参数赋值
			pstm1.setObject(1, pkname);
			// 执行查询
			rs = pstm1.executeQuery();

			// 定义序列当前值
			int currentVal = 0;
			if (rs.next())
			{
				// 读取数据库当前值,为序列赋值
				currentVal = rs.getInt(1);
			}
			return currentVal;
		} finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm1);
			DBUtils.close(pstm2);
		}
	}
}
