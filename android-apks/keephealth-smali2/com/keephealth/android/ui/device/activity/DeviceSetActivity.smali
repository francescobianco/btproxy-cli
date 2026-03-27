.class public Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "DeviceSetActivity.java"


# instance fields
.field llAlarm:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090358
    .end annotation
.end field

.field llHrRange:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090378
    .end annotation
.end field

.field llLongSit:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090386
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c003f

    return v0
.end method

.method public initView()V
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 44
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isAlarm()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 45
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2a

    .line 47
    :cond_25
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    :goto_2a
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminder()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminderB()Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_3d

    .line 52
    :cond_37
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llLongSit:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_42

    .line 50
    :cond_3d
    :goto_3d
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llLongSit:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    :goto_42
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHeartRateIntervalAndWarning()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llHrRange:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7d

    .line 57
    :cond_4e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llHrRange:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7d

    .line 60
    :cond_54
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 61
    iget-object v3, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v3, :cond_6e

    const-string v3, "A07B7CN2"

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llHrRange:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_73

    .line 64
    :cond_6e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llHrRange:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    :goto_73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llAlarm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DeviceSetActivity;->llLongSit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7d
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 92
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onResume()V

    return-void
.end method

.method toRemind()V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090252
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 75
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminderB()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    const-class v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_37

    .line 78
    :cond_12
    const-class v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_37

    .line 81
    :cond_18
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 82
    iget-object v1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v1, :cond_32

    const-string v1, "A01WP6T2\u3001A01WP6N2\u3001A01WP6T7"

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 83
    const-class v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_37

    .line 85
    :cond_32
    const-class v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_37
    return-void
.end method
