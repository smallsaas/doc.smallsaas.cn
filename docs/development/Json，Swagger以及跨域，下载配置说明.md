
## Json，Swagger以及跨域，下载配置说明


###  说明

#### 1. 配置类继承WebMvcConfigurationSupport 且只会生效一个。目前配置类为crud-core中的SysWebMvcConfigurer，如果项目中有新的配置类继承了WebMvcConfigurationSupport  则会覆盖原有的。

#### 2. 目前配置内容

  a.解决swagger相关资源404的问题
  b.fastJson替代原本的Jackson作为默认的json解析器
  c.配置下载地址
  d.跨域配置在CorsConfig类中

#### 3. Jackson配置说明
   由于配置了fastJson，相应的如果要自定义某个字段的返回格式，需要使用@JSONField配置字段
   
   配置时间
```
   @JSONField(format="yyyy-MM-dd HH:mm:ss")
   private Date createDate;
```


   
   //还可以配置ordinal 作为字段排序 例如 

```
   @JSONField(ordinal = 2)
   private String name;
```
  

   
   

