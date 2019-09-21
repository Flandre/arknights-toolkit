<view class="container">
  <view class="name">{{charaInfo.name}}</view>
  <view class="appellation">{{charaInfo.appellation}}</view>
  <view
    qq:for="{{charaInfo.phases}}"
    qq:for-index="index"
    qq:for-item="phase"
  >
    <view>精英化：{{index}}</view>
    <view
      qq:for="{{phase.attributesKeyFrames}}"
      qq:for-index="idx"
      qq:for-item="attr"
    >
      <view>{{idx ? '满级' : '初始'}}</view>
      <view>生命：{{attr.data.maxHp}}</view>
      <view>攻击：{{attr.data.atk}}</view>
      <view>防御：{{attr.data.def}}</view>
      <view>法术抗性：{{attr.data.magicResistance}}</view>
      <view>再部署时间：{{attr.data.respawnTime}}</view>
      <view>部署费用：{{attr.data.cost}}</view>
      <view>阻挡数：{{attr.data.blockCnt}}</view>
      <view>攻击速度：{{attr.data.baseAttackTime}}</view>

    </view>
  </view>

</view>
