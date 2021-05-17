import { defineConfig } from "dumi";

export default defineConfig({
  favicon: "https://avatars.githubusercontent.com/u/44112389?s=200&v=4",
  title: "开发手册",
  mode: "site", //注释掉为doc模式
  logo: "https://avatars.githubusercontent.com/u/44112389?s=200&v=4",
  navs: [
    // null, //默认为null，直接显示目录结构里的导航
    {
      path: "/development",
      title: "项目开发"
    },
    {
      path: "http://docs1.smallsaas.cn/",
      title: "zero-element"
    },
    {
      title: "Github",
      children: [
        {
          path: "https://github.com/smallsaas/docs.smallsaas.cn",
          title: "关于我们"
        }
      ]
    }
  ],
  menus: {
    "/git": [
      {
        title: "git工具的使用",
        path: "/git/git工具的使用"
      },
      {
        title: "github登不上或不稳定解决方法",
        path: "/git/github解决方法"
      }
    ]
  }
});
