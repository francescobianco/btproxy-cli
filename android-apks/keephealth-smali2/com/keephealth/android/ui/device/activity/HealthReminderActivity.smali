.class public Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "HealthReminderActivity.java"


# instance fields
.field private deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field ilHeartWarn:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901de
    .end annotation
.end field

.field ilWater:Lcom/keephealth/android/views/ItemLableValue;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f5
    .end annotation
.end field

.field viewHeatWarn:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907b9
    .end annotation
.end field

.field viewLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907ba
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method HeartWarn()V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901de
        }
    .end annotation

    const v0, 0x7f0901de

    .line 93
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 94
    const-class v0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_e
    return-void
.end method

.method WaterWarn()V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901f5
        }
    .end annotation

    const v0, 0x7f0901f5

    .line 83
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v1, "from"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v1, 0x7f100748

    .line 86
    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-class v1, Lcom/keephealth/android/ui/main/activity/DrinkWaterTargetAndNoticeActivity;

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_25
    return-void
.end method

.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c005d

    return v0
.end method

.method protected initView()V
    .registers 4

    .line 40
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->titleName:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_17
    invoke-static {p0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    const/16 v1, 0x8

    if-eqz v0, :cond_5b

    .line 46
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkingWaterMode()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilWater:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    .line 50
    :cond_33
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilWater:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :goto_3d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHeartRateIntervalAndWarning()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewHeatWarn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilHeartWarn:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_6f

    .line 57
    :cond_50
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewHeatWarn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilHeartWarn:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    goto :goto_6f

    .line 61
    :cond_5b
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilWater:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->viewHeatWarn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->ilHeartWarn:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setVisibility(I)V

    :goto_6f
    return-void
.end method

.method longSit()V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901e0
        }
    .end annotation

    const v0, 0x7f0901e0

    .line 70
    invoke-static {v0}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

    if-eqz v0, :cond_1e

    .line 72
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminderB()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 73
    const-class v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetNewActivity;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1e

    .line 75
    :cond_19
    const-class v0, Lcom/keephealth/android/ui/device/activity/RemindSportSetActivity;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_1e
    :goto_1e
    return-void
.end method
