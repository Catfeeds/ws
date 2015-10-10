package com.cplatform.log;

import java.lang.reflect.Method;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.core.ParameterNameDiscoverer;

/**
 * ������־��¼��.
 * <p>
 * <p>
 * Copyright: Copyright (c) 2013-5-28 ����7:13:21
 * <p>
 * Company: ��������ʮ�����ּ������޹�˾
 * <p>
 * 
 * @author chengfan@c-platform.com
 * @version 1.0.0
 */
public class TraceLogger {

	/** ��־���� */
	private String loggerLevel;

	/** ��־���� */
	private String loggerName;

	/** parameterNameDiscoverer */
	private ParameterNameDiscoverer parameterNameDiscoverer = new LocalVariableTableParameterNameDiscoverer();

	/** �Ƿ�չʾ���� */
	private Boolean showParams;

	/** ����toString�ķ���: json bean */
	private String toStringType = null;

	/**
	 * ���ٷ�����aop:around��ʽ����
	 * 
	 * @param pjp
	 *            Proceeding Join Point
	 * @return Method return value
	 * @throws Throwable
	 *             Throwable
	 */
	public Object around(ProceedingJoinPoint pjp) throws Throwable {
		// Ĭ������
		Level logLevel = Level.TRACE;
		String subject = "";
		boolean showParam = true;
		Method method = null;

		// ��ȡ���ٶ���Ͳ���
		Signature signature = pjp.getSignature();
		if (signature instanceof MethodSignature) {
			MethodSignature methodSignature = (MethodSignature) signature;
			method = methodSignature.getMethod();
			TraceLog traceLog = method.getAnnotation(TraceLog.class);
			if (traceLog != null) {
				logLevel = Level.toLevel(traceLog.logLevel());
				if (loggerLevel != null) {
					logLevel = Level.toLevel(loggerLevel);
				}
				subject = traceLog.subject();
				showParam = traceLog.showParams();
			}
		}

		// ��־
		String className = pjp.getSignature().getDeclaringType().getName();
		String name = (loggerName == null) ? className : loggerName;
		Logger logger = Logger.getLogger(name);
		boolean needLog = logger.isEnabledFor(logLevel);

		long time0 = System.nanoTime();

		// ��¼����ִ��ǰ��־
		if (needLog) {
			StringBuilder buf = new StringBuilder();
			buf.append(subject).append(" ").append(signature).append(" start ");
			if ((this.showParams != null && showParam) || (showParams != null && showParams) || (showParams == null && showParam)) {
				buf.append("(");
				String[] paramNames = parameterNameDiscoverer.getParameterNames(method);
				for (int i = 0; i < pjp.getArgs().length; i++) {
					Object obj = pjp.getArgs()[i];
					if (paramNames != null) {
						buf.append(paramNames[i]);
					} else {
						buf.append("p").append(i);
					}
					buf.append("=").append(objToString(obj)).append(", ");
				}
				buf.setLength(buf.length() - 2);
				buf.append(")");
			} else {
				buf.append("(...)");
			}
			logger.log(logLevel, buf.toString().trim());
		}

		// ִ��
		try {
			Object retVal = pjp.proceed();
			// ��¼ִ�к���־
			if (needLog) {
				long time1 = System.nanoTime();
				StringBuilder buf = new StringBuilder();
				buf.append(subject).append(" ").append(signature).append(" finish ");
				buf.append("(").append(getTime(time0, time1)).append("ms)");
				// �ж���Ӧ���
				if (method != null && method.getReturnType() != Void.TYPE) {
					buf.append(" ").append(objToString(retVal));
				}
				logger.log(logLevel, buf.toString().trim());
			}
			return retVal;
		}
		catch (Exception ex) {
			// ��¼�쳣��־
			if (needLog) {
				long time1 = System.nanoTime();
				StringBuilder buf = new StringBuilder();
				if (loggerName != null) {
					buf.append(className).append(" ");
				}
				buf.append(subject).append(" exception ");
				buf.append("(").append(getTime(time0, time1)).append("ms)");
				buf.append(": ").append(ex);
				logger.log(logLevel, buf.toString().trim(), ex);
			}
			throw ex;
		}

	}

	public String getLoggerLevel() {
		return loggerLevel;
	}

	public String getLoggerName() {
		return loggerName;
	}

	/**
	 * ��ȡ showParams
	 * 
	 * @return showParams
	 */
	public Boolean getShowParams() {
		return showParams;
	}

	/**
	 * ��ȡ������
	 * 
	 * @param time0
	 *            ʱ���0
	 * @param time1
	 *            ʱ���1
	 * @return 0.00��ʽ�ĺ�����
	 */
	private String getTime(long time0, long time1) {
		double t = Math.abs(time1 - time0);
		t = t / 1000000;
		return String.format("%.2f", t);
	}

	/**
	 * ��ȡ toStringType
	 * 
	 * @return toStringType
	 */
	public String getToStringType() {
		return toStringType;
	}

	/**
	 * ����ָ���ķ���ת�������String
	 * 
	 * @param obj
	 *            ��Ҫת���Ķ���
	 * @return ����ָ���ķ���ת���ɵ�String
	 */
	private String objToString(Object obj) {
		try {
			if (obj instanceof Boolean) {
				return String.valueOf(obj);
			} else if (obj instanceof Number) {
				return String.valueOf(obj);
			} else if (obj instanceof CharSequence) {
				return String.valueOf(obj);
			} else if (obj instanceof Character) {
				return String.valueOf(obj);
			} else if (obj != null && "json".equals(this.toStringType)) {
				return JSONObject.fromObject(obj).toString();
			} else if (obj != null && "bean".equals(this.toStringType)) {
				@SuppressWarnings("rawtypes")
				Map map = BeanUtils.describe(obj);
				return String.valueOf(map);
			} else if (obj != null && "none".equals(this.toStringType)) {
				return "?";
			} else {
				return String.valueOf(obj);
			}
		}
		catch (Exception ex) {
			return String.valueOf(obj);
		}
	}

	public void setLoggerLevel(String loggerLevel) {
		this.loggerLevel = loggerLevel;
	}

	public void setLoggerName(String loggerName) {
		this.loggerName = loggerName;
	}

	/**
	 * ���� showParams
	 * 
	 * @param showParams
	 *            showParams
	 */
	public void setShowParams(Boolean showParams) {
		this.showParams = showParams;
	}

	/**
	 * ���� toStringType
	 * 
	 * @param toStringType
	 *            toStringType
	 */
	public void setToStringType(String toStringType) {
		this.toStringType = toStringType;
	}
}
