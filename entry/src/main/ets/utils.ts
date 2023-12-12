import router from '@ohos.router'

export  const routerToPage = (pageName: string) => {
  router.pushUrl({url: `pages/${pageName}`})
}