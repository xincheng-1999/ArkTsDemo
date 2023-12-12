// xxx.ets
import { routerToPage } from '../utils'
@Entry
@Component
struct ButtonExample {
  build() {
    Column(){
      Column(){
        Row(){
          Text(){
            Span("游客模式")
              .fontColor($r("app.color.CT1"))
              .fontSize("32lpx")
          }
          .padding({top: "32lpx", right:"32lpx"})
        }
        .width("100%")
        .justifyContent(FlexAlign.End)

        Image($r("app.media.icon"))
          .width("235lpx")
          .margin({top: "235lpx"})
      }

      Column(){
        Button("注册").width("622lpx").height("96lpx").backgroundColor($r("app.color.MG")).margin({bottom:"32lpx"}).onClick(() => {
          routerToPage('RegisterHome')
        })
        Button("登录").width("622lpx").height("96lpx").backgroundColor($r("app.color.MG")).margin({bottom:"32lpx"})
      }
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.SpaceBetween)
    // Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {
    //   Text('Normal button').fontSize(9).fontColor(0xCCCCCC)
    //   Flex({ alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
    //     Button('OK', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(0x317aff).width(90)
    //     Button({ type: ButtonType.Normal, stateEffect: true }) {
    //       Row() {
    //         LoadingProgress().width(20).height(20).margin({ left: 12 }).color(0xFFFFFF)
    //         Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
    //       }.alignItems(VerticalAlign.Center)
    //     }.borderRadius(8).backgroundColor(0x317aff).width(90).height(40)
    //
    //     Button('Disable', { type: ButtonType.Normal, stateEffect: false }).opacity(0.4)
    //       .borderRadius(8).backgroundColor(0x317aff).width(90)
    //   }
    //
    //   Text('Capsule button').fontSize(9).fontColor(0xCCCCCC)
    //   Flex({ alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
    //     Button('OK', { type: ButtonType.Capsule, stateEffect: true }).backgroundColor(0x317aff).width(90)
    //     Button({ type: ButtonType.Capsule, stateEffect: true }) {
    //       Row() {
    //         LoadingProgress().width(20).height(20).margin({ left: 12 }).color(0xFFFFFF)
    //         Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
    //       }.alignItems(VerticalAlign.Center).width(90).height(40)
    //     }.backgroundColor(0x317aff)
    //
    //     Button('Disable', { type: ButtonType.Capsule, stateEffect: false }).opacity(0.4)
    //       .backgroundColor(0x317aff).width(90)
    //   }
    //
    //   Text('Circle button').fontSize(9).fontColor(0xCCCCCC)
    //   Flex({ alignItems: ItemAlign.Center, wrap: FlexWrap.Wrap }) {
    //     Button({ type: ButtonType.Circle, stateEffect: true }) {
    //       LoadingProgress().width(20).height(20).color(0xFFFFFF)
    //     }.width(55).height(55).backgroundColor(0x317aff)
    //
    //     Button({ type: ButtonType.Circle, stateEffect: true }) {
    //       LoadingProgress().width(20).height(20).color(0xFFFFFF)
    //     }.width(55).height(55).margin({ left: 20 }).backgroundColor(0xF55A42)
    //   }
    // }.height(400).padding({ left: 35, right: 35, top: 35 })
  }
}
