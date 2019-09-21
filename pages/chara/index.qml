<view class="">
  <image src="../../assets/bg.jpg" mode="aspectFill" class="bg"></image>
  <view class="chara-filter"></view>
  <view class="chara-container">
    <view
      qq:for="{{ charaData }}"
      data-index="{{ index }}"
      bindtap="tapChara"
      class="chara-item"
    >
      <image src="http://flandrescarlet.gitee.io/ark/assets/chara/{{item.encodeName}}.png" class="avatar"></image>
      <view class="name">{{item.name}}</view>
    </view>
  </view>
</view>
