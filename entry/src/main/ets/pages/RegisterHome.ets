import { NavigationBar } from '../components/NavigationBar'
import { TitleContent } from '../components/TitleContent'
@Entry
@Component
struct RegisterHome {
  @State message: string = 'Hello World'

  build() {
    Column(){
      NavigationBar({title: ''}){
        Text('反馈').fontColor($r("app.color.CT1")).fontSize("32lpx")
      }
      TitleContent({title: '创建账号',content:'你可以创建账户'})

      Button({ type: ButtonType.Capsule, stateEffect: true }) {
        Row() {
          Text('用电子邮件注册').fontSize("32lpx").fontColor(0xffffff)
        }.alignItems(VerticalAlign.Center)
      }
      .borderRadius(8)
      .backgroundColor($r("app.color.MG"))
      .width("622lpx").height("96lpx")
      .margin({top:'80lpx'})

      Button({ type: ButtonType.Capsule, stateEffect: true }) {
        Row() {
          Text('用facebook注册').fontSize("32lpx").fontColor('#48598e')
        }.alignItems(VerticalAlign.Center)
      }
      .borderRadius(8)
      .backgroundColor('transparent')
      .width("622lpx").height("96lpx")
      .borderWidth('1lpx')
      .borderColor('#48598e')
      .margin({top:'32lpx'})
    }
  }
}

