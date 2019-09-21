<view class="container">
  <image src="../../assets/chbg.png" mode="aspectFill" class="bg"></image>
  <view class="chara-container">

    <view class="info-panel">
      <view class="chara-info">
        <image src="http://flandrescarlet.gitee.io/ark/assets/chara/{{charaInfo.fixName}}.png" class="avatar"></image>
        <view class="info">
          <view class="name">{{charaInfo.name}}</view>
          <view class="appellation">{{charaInfo.appellation}}</view>
        </view>
      </view>
    </view>

    <view class="info-panel">
      <view class="title">基本属性</view>
      <view class="info-container">
        <view class="info-row">
          <view class="info-name">生命</view>
          <view class="info-desc">
            <view
              qq:for="{{charaInfo.phases}}"
              qq:for-index="index"
              qq:for-item="phase"
            >
              <view
                qq:for="{{phase.attributesKeyFrames}}"
                qq:for-index="idx"
                qq:for-item="attr"
                qq:if="{{index == 0 || idx == 1}}"
              >
                {{attr.data.maxHp}}
              </view>
            </view>
          </view>
        </view>
        <view class="info-row">
          <view class="info-name">攻击</view>
          <view class="info-desc">
            <view
              qq:for="{{charaInfo.phases}}"
              qq:for-index="index"
              qq:for-item="phase"
            >
              <view
                qq:for="{{phase.attributesKeyFrames}}"
                qq:for-index="idx"
                qq:for-item="attr"
                qq:if="{{index == 0 || idx == 1}}"
              >
                {{attr.data.atk}}
              </view>
            </view>
          </view>
        </view>
        <view class="info-row">
          <view class="info-name">防御</view>
          <view class="info-desc">
            <view
              qq:for="{{charaInfo.phases}}"
              qq:for-index="index"
              qq:for-item="phase"
            >
              <view
                qq:for="{{phase.attributesKeyFrames}}"
                qq:for-index="idx"
                qq:for-item="attr"
                qq:if="{{index == 0 || idx == 1}}"
              >
                {{attr.data.def}}
              </view>
            </view>
          </view>
        </view>
        <view class="info-row">
          <view class="info-name">法抗</view>
          <view class="info-desc">
            <view
              qq:for="{{charaInfo.phases}}"
              qq:for-index="index"
              qq:for-item="phase"
            >
              <view
                qq:for="{{phase.attributesKeyFrames}}"
                qq:for-index="idx"
                qq:for-item="attr"
                qq:if="{{index == 0 || idx == 1}}"
              >
                {{attr.data.magicResistance}}
              </view>
            </view>
          </view>
        </view>
        <view class="info-row">
          <view class="info-name">再部署</view>
          <view class="info-desc">
            <view
              qq:for="{{charaInfo.phases}}"
              qq:for-index="index"
              qq:for-item="phase"
            >
              <view
                qq:for="{{phase.attributesKeyFrames}}"
                qq:for-index="idx"
                qq:for-item="attr"
                qq:if="{{index == 0 || idx == 1}}"
              >
                {{attr.data.respawnTime}}
              </view>
            </view>
          </view>
        </view>
        <view class="info-row">
          <view class="info-name">费用</view>
          <view class="info-desc">
            <view
              qq:for="{{charaInfo.phases}}"
              qq:for-index="index"
              qq:for-item="phase"
            >
              <view
                qq:for="{{phase.attributesKeyFrames}}"
                qq:for-index="idx"
                qq:for-item="attr"
                qq:if="{{index == 0 || idx == 1}}"
              >
                {{attr.data.cost}}
              </view>
            </view>
          </view>
        </view>
        <view class="info-row">
          <view class="info-name">阻挡</view>
          <view class="info-desc">
            <view
              qq:for="{{charaInfo.phases}}"
              qq:for-index="index"
              qq:for-item="phase"
            >
              <view
                qq:for="{{phase.attributesKeyFrames}}"
                qq:for-index="idx"
                qq:for-item="attr"
                qq:if="{{index == 0 || idx == 1}}"
              >
                {{attr.data.blockCnt}}
              </view>
            </view>
          </view>
        </view>
        <view class="info-row">
          <view class="info-name">攻速</view>
          <view class="info-desc">
            <view
              class="inline-text-outer"
              qq:for="{{charaInfo.phases}}"
              qq:for-index="index"
              qq:for-item="phase"
            >
              <view
                class="inline-text"
                qq:for="{{phase.attributesKeyFrames}}"
                qq:for-index="idx"
                qq:for-item="attr"
                qq:if="{{index == 0 || idx == 1}}"
              >
                {{attr.data.baseAttackTime}}
              </view>
            </view>
          </view>
        </view>
      </view>
    </view>

    <view class="info-panel">
      <view class="title">攻击范围</view>

    </view>
  </view>
</view>
