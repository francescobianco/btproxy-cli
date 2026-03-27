.class public Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;
.super Lcom/keephealth/android/base/BaseMvpActivity;
.source "DeviceLanguageActivity.java"

# interfaces
.implements Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;
.implements Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvpActivity<",
        "Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;",
        ">;",
        "Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;",
        "Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private languageBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/LanguageBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvpActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->languageBeanList:Ljava/util/List;

    return-void
.end method

.method private setDeviceState()V
    .registers 16

    .line 108
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    move-result-object v0

    const/16 v1, 0x21

    .line 109
    invoke-static {p0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 111
    invoke-static {p0}, Lcom/keephealth/android/util/AppUtil;->getLanguageCode(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    goto :goto_22

    .line 113
    :cond_1a
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v2

    iput v2, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 115
    :goto_22
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v2

    if-ne v2, v3, :cond_33

    .line 116
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    goto :goto_3b

    .line 118
    :cond_33
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v2

    iput v2, v0, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 120
    :goto_3b
    iget v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 121
    iget v4, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 122
    iget v5, v0, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 123
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v7

    .line 125
    iget v8, v0, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 126
    iget v9, v0, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 127
    iget-boolean v10, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 128
    iget-boolean v11, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 129
    iget v12, v0, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 130
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v13

    .line 131
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 132
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    iget v6, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 133
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v14

    .line 132
    invoke-static/range {v3 .. v14}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceState(IIIIIIIIIIII)[B

    move-result-object v0

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity$1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c003c

    return v0
.end method

.method public getFail()V
    .registers 1

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->finish()V

    return-void
.end method

.method public getSuccess(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/LanguageBean;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->languageBeanList:Ljava/util/List;

    .line 74
    new-instance p1, Lcom/keephealth/android/model/bean/LanguageBean;

    invoke-direct {p1}, Lcom/keephealth/android/model/bean/LanguageBean;-><init>()V

    const/4 v0, -0x1

    .line 75
    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/LanguageBean;->setType(I)V

    .line 76
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100305

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/LanguageBean;->setLanguage(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->languageBeanList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    new-instance p1, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->languageBeanList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->setType(I)V

    .line 80
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;

    invoke-virtual {p1, p0}, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 61
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->initView()V

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 65
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 66
    iget-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 67
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v1, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->getDeviceLanguage(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .line 91
    const-string v0, "USER_TOKEN"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;

    check-cast v0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->saveUser(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 94
    :cond_17
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvpActivity;->onBackPressed()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 3

    .line 99
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->languageBeanList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/LanguageBean;

    .line 100
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/LanguageBean;->getType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/UserBean;->setLanguage(I)V

    .line 101
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 102
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->setType(I)V

    .line 103
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;->notifyDataSetChanged()V

    .line 104
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/DeviceLanguageActivity;->setDeviceState()V

    return-void
.end method
