---
group:
  title: 组件
sidemenu: false
---

## JSON 表单参数对照表

#### 1.概述

此文档是动态表单 JSON 参数说明文档，作为本项目表单对接的标准依据。

#### 2.布局方式

目前布局方式(`__config__.layout`)有列布局、行布局。移动端使用列布局，PC 端支持行布局和列布局。

- `colFormItem`: 列布局

- `rowFormItem`: 行布局

#### 3. 组件列表

##### 3.1 输入型组件

- 单行文本 ( tag: el-input; tagIcon: input )

- 多行文本 ( tag: el-input; tagIcon: textarea )

- 密码 ( tag: el-input; tagIcon: password )

- 计数器 ( tag: el-input-number; tagIcon: number )

- 编辑器 ( tag: tinymce; tagIcon: rich-text ) [移动端不支持]

##### 3.2 选择型组件

- 下拉选择 ( tag: el-select; tagIcon: select )

- 级联选择 ( tag: el-cascader; tagIcon: cascader )

- 单选框组 ( tag: el-radio-group; tagIcon: radio )

- 多选框组 ( tag: el-input-checkbox; tagIcon: checkbox )

- 开关 ( tag: el-switch; tagIcon: switch )

- 滑块 ( tag: el-slider; tagIcon: slider )

- 时间选择 ( tag: el-time-picker; tagIcon: time )

- 时间范围 ( tag: el-time-picker; tagIcon: time-range )

- 日期选择 ( tag: el-date-picker; tagIcon: date )

- 日期范围 ( tag: el-date-picker; tagIcon: date-range )

- 评分 ( tag: el-rate; tagIcon: rate )

- 颜色选择 ( tag: el-color-picker; tagIcon: color ) [移动端不支持]

- 上传 ( tag: el-upload; tagIcon: upload )

##### 3.3 布局型组件

- 行容器 ( layout: rowFormItem )

#### 4. JSON 主要配置说明

##### 4.1 根结构

| 属性          | 说明                                | 默认值   |
| ------------- | ----------------------------------- | -------- |
| fields        | colFormItem、rowFormItem 组合的数组 | []       |
| formRef       | 表单名                              | elForm   |
| formModel     | 表单模型                            | formData |
| size          | 表单尺寸 medium \| small \| mini    | medium   |
| labelPosition | 标签对齐 left \| right \| top       | left     |
| labelWidth    | 标签宽度                            | 100      |
| disabled      | 是否禁用表单 true \| false          | false    |
| formBtns      | 是否显示提交按钮 true \| false      | false    |

##### 4.2 `colFormItem`

| 属性            | 说明                       | 默认值 |
| --------------- | -------------------------- | ------ |
| **config**      | 控件配置信息               | {}     |
| **slot**        | 控件配置信息               | {}     |
| placeholder     | 占位提示符                 |        |
| style           | 控件样式                   |        |
| clearable       | 能否清空 true \| false     | true   |
| prefix-icon     | 前图标                     |        |
| suffix-icon     | 后图标                     |        |
| maxlength       | 最大输入                   |        |
| show-word-limit | 显示输入统计 true \| false | false  |
| readonly        | 是否只读 true \| false     | false  |
| disabled        | 是否禁用 true \| false     | false  |
| **vModel**      | 绑定 v-model 的字段名      |        |

##### 4.3 `rowFormItem`

| 属性       | 说明                                                             | 默认值  |
| ---------- | ---------------------------------------------------------------- | ------- |
| **config** | 控件配置信息                                                     | {}      |
| type       | 布局模式 default \| flex                                         | default |
| justify    | 水平排列 start \| end \| center \| space-around \| space-between | start   |
| align      | 垂直排列 top \| middle \| bottom                                 | top     |

##### 4.4 `__config__`

| 属性              | 说明                                               | 默认值              |
| ----------------- | -------------------------------------------------- | ------------------- |
| layout            | 组件使用的布局方式 rowFormItem \| colFormItem      | colFormItem         |
| label             | 标题                                               |                     |
| showLabel         | 是否显示表单标题 true \| false                     | true                |
| labelWidth        | 标题区域宽度                                       |                     |
| tag               | 组件名称 参考内容 3                                |                     |
| tagIcon           | 组件图标、类型 参考内容 3                          |                     |
| required          | 是否必填 true \| false                             | true                |
| regList           | 正则校验[{pattern: ‘/0-9/’, message:’请输入数字’}] |                     |
| defaultValue      | 默认值，可用于表单数据回填                         |                     |
| children          | 子组件(rowFormItem 布局需要用到)                   |                     |
| componentName     | 组件名(rowFormItem 布局需要用到)                   |                     |
| autosize          | 最小行数、最大行数                                 |                     |
| picker-options    | 日期时间选项配置                                   |                     |
| range-separator   | 日期时间选项配置                                   | 至                  |
| start-placeholder | 日期时间选项配置                                   | 开始时间            |
| end-placeholder   | 日期时间选项配置                                   | 结束时间            |
| format            | 日期时间选项配置                                   | YYYY-MM-DD HH:mm:ss |
| value-format      | 日期时间选项配置                                   | YYYY-MM-DD HH:mm:ss |

##### 4.5 `__slot__`

| 属性    | 说明         | 默认值 |
| ------- | ------------ | ------ |
| options | 下拉选择选项 |        |
| prepend | 输入框前缀   |        |
| append  | 输入框后缀   |        |

## form.json

```json
{
  "fields": [
    {
      "__config__": {
        "label": "账号",
        "labelWidth": null,
        "showLabel": true,
        "tag": "el-input",
        "tagIcon": "input",
        "defaultValue": "admin",
        "required": true,
        "layout": "colFormItem",
        "regList": [],
        "formId": 101,
        "renderKey": 1621415022993
      },
      "__slot__": {
        "prepend": "",
        "append": ""
      },
      "placeholder": "请输入账号",
      "style": {
        "width": "100%"
      },
      "clearable": true,
      "prefix-icon": "",
      "suffix-icon": "",
      "maxlength": null,
      "show-word-limit": false,
      "readonly": false,
      "disabled": false,
      "__vModel__": "account"
    },
    {
      "__config__": {
        "label": "密码",
        "showLabel": true,
        "labelWidth": null,
        "tag": "el-input",
        "tagIcon": "password",
        "layout": "colFormItem",
        "required": true,
        "regList": [
          {
            "pattern": "/0-9/",
            "message": "密码只能是纯数字"
          }
        ],
        "formId": 102,
        "renderKey": 1621415025493
      },
      "__slot__": {
        "prepend": "",
        "append": ""
      },
      "placeholder": "请输入密码",
      "show-password": true,
      "style": {
        "width": "100%"
      },
      "clearable": true,
      "prefix-icon": "",
      "suffix-icon": "",
      "maxlength": null,
      "show-word-limit": false,
      "readonly": false,
      "disabled": false,
      "__vModel__": "password"
    },
    {
      "__config__": {
        "label": "性别",
        "showLabel": true,
        "labelWidth": null,
        "tag": "el-select",
        "tagIcon": "select",
        "layout": "colFormItem",
        "required": true,
        "regList": [],
        "formId": 103,
        "renderKey": 1621415255861
      },
      "__slot__": {
        "options": [
          {
            "label": "男",
            "value": 1
          },
          {
            "label": "女",
            "value": 2
          }
        ]
      },
      "placeholder": "请选择性别",
      "style": {
        "width": "100%"
      },
      "clearable": true,
      "disabled": false,
      "filterable": false,
      "multiple": false,
      "__vModel__": "sex"
    },
    {
      "__config__": {
        "label": "单选框组",
        "labelWidth": null,
        "showLabel": true,
        "tag": "el-radio-group",
        "tagIcon": "radio",
        "layout": "colFormItem",
        "optionType": "default",
        "regList": [],
        "required": false,
        "border": false,
        "formId": 104,
        "renderKey": 1621415304568
      },
      "__slot__": {
        "options": [
          {
            "label": "选项一",
            "value": 1
          },
          {
            "label": "选项二",
            "value": 2
          }
        ]
      },
      "style": {},
      "size": "medium",
      "disabled": false,
      "__vModel__": "field104"
    },
    {
      "__config__": {
        "label": "多选框组",
        "tag": "el-checkbox-group",
        "tagIcon": "checkbox",
        "defaultValue": [],
        "showLabel": true,
        "labelWidth": null,
        "layout": "colFormItem",
        "optionType": "default",
        "required": false,
        "regList": [],
        "border": false,
        "formId": 105,
        "renderKey": 1621415342008
      },
      "__slot__": {
        "options": [
          {
            "label": "选项一",
            "value": 1
          },
          {
            "label": "选项二",
            "value": 2
          },
          {
            "label": "选项三",
            "value": 3
          }
        ]
      },
      "style": {},
      "size": "medium",
      "disabled": false,
      "__vModel__": "field105"
    },
    {
      "__config__": {
        "label": "开关",
        "tag": "el-switch",
        "tagIcon": "switch",
        "defaultValue": false,
        "showLabel": true,
        "labelWidth": null,
        "layout": "colFormItem",
        "required": true,
        "regList": [],
        "formId": 106,
        "renderKey": 1621415361475
      },
      "style": {},
      "disabled": false,
      "active-text": "",
      "inactive-text": "",
      "active-color": null,
      "inactive-color": null,
      "active-value": true,
      "inactive-value": false,
      "__vModel__": "field106"
    },
    {
      "__config__": {
        "label": "日期选择",
        "tag": "el-date-picker",
        "tagIcon": "date",
        "defaultValue": null,
        "showLabel": true,
        "labelWidth": null,
        "layout": "colFormItem",
        "required": true,
        "regList": [],
        "formId": 109,
        "renderKey": 1621415374360
      },
      "placeholder": "请选择日期选择",
      "type": "date",
      "style": {
        "width": "100%"
      },
      "disabled": false,
      "clearable": true,
      "format": "yyyy-MM-dd",
      "value-format": "yyyy-MM-dd",
      "readonly": false,
      "__vModel__": "field109"
    },
    {
      "__config__": {
        "layout": "rowFormItem",
        "tagIcon": "row",
        "layoutTree": true,
        "formId": 112,
        "renderKey": 1621415404383,
        "componentName": "row112",
        "children": [
          {
            "__config__": {
              "label": "单行文本",
              "labelWidth": null,
              "showLabel": true,
              "tag": "el-input",
              "tagIcon": "input",
              "required": true,
              "layout": "colFormItem",
              "regList": [],
              "formId": 113,
              "renderKey": 1621415432107
            },
            "__slot__": {
              "prepend": "",
              "append": ""
            },
            "placeholder": "请输入单行文本",
            "style": {
              "width": "100%"
            },
            "clearable": true,
            "prefix-icon": "",
            "suffix-icon": "",
            "maxlength": null,
            "show-word-limit": false,
            "readonly": false,
            "disabled": false,
            "__vModel__": "field113"
          },
          {
            "__config__": {
              "label": "多行文本",
              "labelWidth": null,
              "showLabel": true,
              "tag": "el-input",
              "tagIcon": "textarea",
              "required": true,
              "layout": "colFormItem",
              "regList": [],
              "formId": 114,
              "renderKey": 1621415438457
            },
            "type": "textarea",
            "placeholder": "请输入多行文本",
            "autosize": {
              "minRows": 4,
              "maxRows": 4
            },
            "style": {
              "width": "100%"
            },
            "maxlength": null,
            "show-word-limit": false,
            "readonly": false,
            "disabled": false,
            "__vModel__": "field114"
          }
        ]
      },
      "type": "default",
      "justify": "start",
      "align": "top"
    }
  ],
  "formRef": "elForm",
  "formModel": "formData",
  "size": "medium",
  "labelPosition": "left",
  "labelWidth": 100,
  "formRules": "rules",
  "gutter": 0,
  "disabled": false,
  "formBtns": true,
  "unFocusedComponentBorder": false
}
```
