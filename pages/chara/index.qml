<view class="">
  <image src="../../assets/bg.jpg" mode="aspectFill" class="bg"></image>
  <view class="chara-container">
    <view class="chara-filter">
      <view class="filter-name">职业</view>
      <view class="filter-container">
        <view class="filter-info {{typeFilter.PIONEER ? 'active': ''}}" data-type="PIONEER" bindtap="changeFilter">
          先锋
        </view>
        <view class="filter-info {{typeFilter.TANK ? 'active': ''}}" data-type="TANK" bindtap="changeFilter">
          重装
        </view>
        <view class="filter-info {{typeFilter.CASTER ? 'active': ''}}" data-type="CASTER" bindtap="changeFilter">
          术师
        </view>
        <view class="filter-info {{typeFilter.SNIPER ? 'active': ''}}" data-type="SNIPER" bindtap="changeFilter">
          狙击
        </view>
        <view class="filter-info {{typeFilter.WARRIOR ? 'active': ''}}" data-type="WARRIOR" bindtap="changeFilter">
          近卫
        </view>
        <view class="filter-info {{typeFilter.MEDIC ? 'active': ''}}" data-type="MEDIC" bindtap="changeFilter">
          医疗
        </view>
        <view class="filter-info {{typeFilter.SUPPORT ? 'active': ''}}" data-type="SUPPORT" bindtap="changeFilter">
          辅助
        </view>
        <view class="filter-info {{typeFilter.SPECIAL ? 'active': ''}}" data-type="SPECIAL" bindtap="changeFilter">
          特种
        </view>
      </view>

      <view class="filter-name">星级</view>
      <view class="filter-container">
        <view class="filter-info mini {{rareFilter[1] ? 'active': ''}}" data-rare="1" bindtap="changeRareFilter">
          1
        </view>
        <view class="filter-info mini {{rareFilter[2] ? 'active': ''}}" data-rare="2" bindtap="changeRareFilter">
          2
        </view>
        <view class="filter-info mini {{rareFilter[3] ? 'active': ''}}" data-rare="3" bindtap="changeRareFilter">
          3
        </view>
        <view class="filter-info mini {{rareFilter[4] ? 'active': ''}}" data-rare="4" bindtap="changeRareFilter">
          4
        </view>
        <view class="filter-info mini {{rareFilter[5] ? 'active': ''}}" data-rare="5" bindtap="changeRareFilter">
          5
        </view>
        <view class="filter-info mini {{rareFilter[6] ? 'active': ''}}" data-rare="6" bindtap="changeRareFilter">
          6
        </view>
      </view>

    </view>
    <view
      qq:for="{{ charaData }}"
      data-index="{{ item.charaIndex }}"
      bindtap="tapChara"
      class="chara-item"
    >
      <image src="http://flandrescarlet.gitee.io/ark/assets/chara/{{item.fixName}}.png" class="avatar"></image>
      <view class="name">{{item.name}}</view>
    </view>
  </view>
</view>
