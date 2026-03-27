.class public Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "TimeSystemActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/TimeSystemContract$View;
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/device/TimeSystemPresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/device/TimeSystemContract$View;",
        "Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private timeSystemBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TimeSystemBean;",
            ">;"
        }
    .end annotation
.end field

.field private userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->timeSystemBeanList:Ljava/util/List;

    return-void
.end method

.method private setDeviceState()V
    .registers 20

    move-object/from16 v0, p0

    .line 93
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    move-result-object v1

    const/16 v2, 0x28

    .line 94
    invoke-static {v0, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v2

    .line 95
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    .line 96
    invoke-static/range {p0 .. p0}, Lcom/keephealth/android/util/AppUtil;->getLanguageCode(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    goto :goto_24

    .line 98
    :cond_1c
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 100
    :goto_24
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v3

    const-string v5, "timeFormat"

    const-string v6, "rrr33er"

    if-ne v3, v4, :cond_52

    .line 101
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 102
    iget v3, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    invoke-static {v0, v5, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5b58\u50a81:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 105
    :cond_52
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v3

    iput v3, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5b58\u50a82:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v3, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    invoke-static {v0, v5, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u5b58\u50a82:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_89
    iget v7, v1, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 112
    iget v8, v1, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 113
    iget v9, v1, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 114
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v11

    .line 116
    iget v12, v1, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 117
    iget v13, v1, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 118
    iget-boolean v14, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 119
    iget-boolean v15, v2, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 120
    iget v2, v1, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 121
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v17

    .line 122
    invoke-static {v1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 123
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    iget v10, v1, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 124
    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v18

    move/from16 v16, v2

    .line 123
    invoke-static/range {v7 .. v18}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v5, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity$1;

    invoke-direct {v5, v0}, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;)V

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0092

    return v0
.end method

.method protected initView()V
    .registers 6

    .line 58
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100741

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance v0, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100305

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;-><init>(ILjava/lang/String;)V

    .line 63
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100334

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;-><init>(ILjava/lang/String;)V

    .line 64
    new-instance v2, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100335

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;-><init>(ILjava/lang/String;)V

    .line 65
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->timeSystemBeanList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->timeSystemBeanList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->timeSystemBeanList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->timeSystemBeanList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;

    .line 69
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;->setType(I)V

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 76
    const-string v0, "USER_TOKEN"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/TimeSystemPresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/device/TimeSystemPresenter;->saveUser(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 79
    :cond_17
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onBackPressed()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 3

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->timeSystemBeanList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;

    .line 85
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->getType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/UserBean;->setHourMode12(I)V

    .line 86
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 87
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;->setType(I)V

    .line 88
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;->notifyDataSetChanged()V

    .line 89
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/TimeSystemActivity;->setDeviceState()V

    return-void
.end method
