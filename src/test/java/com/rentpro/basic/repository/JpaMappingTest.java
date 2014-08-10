package com.rentpro.basic.repository;

import static org.assertj.core.api.Assertions.assertThat;

import javax.persistence.EntityManager;
import javax.persistence.metamodel.EntityType;
import javax.persistence.metamodel.Metamodel;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext-core.xml",
		"classpath:applicationContext-hibernate.xml" })
public class JpaMappingTest
// extends SpringTransactionalTestCase //继承事务测试 不能使用多数据源，无法按类型注入DataSource
{

	private static Logger logger = LoggerFactory
			.getLogger(JpaMappingTest.class);

	@Autowired
	private EntityManager em;

	/**
	 * 测试所有表的映射
	 * @throws Exception
	 */
	@Test
	public void allClassMapping() throws Exception {
		Metamodel model = em.getEntityManagerFactory().getMetamodel();
		assertThat(model.getEntities()).as("No entity mapping found")
				.isNotEmpty();

		for (EntityType entityType : model.getEntities()) {
			String entityName = entityType.getName();
			em.createQuery("select o from " + entityName + " o")
					.getResultList();
			logger.info("------mapping ok: " + entityName);
		}
	}
}
