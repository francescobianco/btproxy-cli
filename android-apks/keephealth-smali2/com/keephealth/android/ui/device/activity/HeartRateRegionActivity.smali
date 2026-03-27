.class public Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "HeartRateRegionActivity.java"


# instance fields
.field ilHeatWarning:Lcom/keephealth/android/views/ItemToggleLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901df
    .end annotation
.end field

.field proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

.field rlMax:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904fa
    .end annotation
.end field

.field tvMaxHr:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090682
    .end annotation
.end field

.field tvText1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906ef
    .end annotation
.end field

.field tvText2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f0
    .end annotation
.end field

.field tvText3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906f1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method private saveData()V
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 87
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/DialogHelperNew;->buildWaitDialog(Landroid/app/Activity;ZI)Landroid/app/Dialog;

    .line 88
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/HeartRateInterval;->isCustomHr:Z

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    iget v2, v2, Lcom/keephealth/android/model/bean/HeartRateInterval;->maxHr:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/ble/CmdHelper;->setHeartRange(III)[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c005e

    return v0
.end method

.method public initView()V
    .registers 8

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100322

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getInterval()Lcom/keephealth/android/model/bean/HeartRateInterval;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v2

    sub-int/2addr v0, v2

    rsub-int v0, v0, 0xdc

    int-to-double v2, v0

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v3

    sub-int/2addr v2, v3

    rsub-int v2, v2, 0xdc

    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v4

    sub-int/2addr v3, v4

    rsub-int v3, v3, 0xdc

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 59
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvText1:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "220~"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bpm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvText2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "~"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvText3:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v2, v1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvMaxHr:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    iget v2, v2, Lcom/keephealth/android/model/bean/HeartRateInterval;->maxHr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bpm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->ilHeatWarning:Lcom/keephealth/android/views/ItemToggleLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/HeartRateInterval;->isCustomHr:Z

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->rlMax:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    iget-boolean v1, v1, Lcom/keephealth/android/model/bean/HeartRateInterval;->isCustomHr:Z

    if-eqz v1, :cond_fa

    const/4 v1, 0x0

    goto :goto_fc

    :cond_fa
    const/16 v1, 0x8

    :goto_fc
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->ilHeatWarning:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-ui-device-activity-HeartRateRegionActivity(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 3

    .line 66
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    iput-boolean p2, p1, Lcom/keephealth/android/model/bean/HeartRateInterval;->isCustomHr:Z

    .line 67
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->rlMax:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    iget-boolean p2, p2, Lcom/keephealth/android/model/bean/HeartRateInterval;->isCustomHr:Z

    if-eqz p2, :cond_e

    const/4 p2, 0x0

    goto :goto_10

    :cond_e
    const/16 p2, 0x8

    :goto_10
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 68
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->saveData()V

    return-void
.end method

.method synthetic lambda$setHeartRateMax$1$com-keephealth-android-ui-device-activity-HeartRateRegionActivity(I)V
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    const/16 v0, 0x50

    if-lt p1, v0, :cond_41

    const/16 v0, 0xdc

    if-gt p1, v0, :cond_41

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    iput p1, v0, Lcom/keephealth/android/model/bean/HeartRateInterval;->maxHr:I

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->tvMaxHr:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "bpm"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->saveData()V

    goto :goto_4f

    .line 80
    :cond_41
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10079b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->showToast(Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 103
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    .line 104
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    return-void
.end method

.method setHeartRateMax()V
    .registers 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0904fa
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->proHealthHeartRate:Lcom/keephealth/android/model/bean/HeartRateInterval;

    iget v0, v0, Lcom/keephealth/android/model/bean/HeartRateInterval;->maxHr:I

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100344

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100345

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "220-80"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/HeartRateRegionActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/keephealth/android/util/DialogHelperNew;->getInputDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/keephealth/android/util/DialogHelperNew$SetInputCallback;)V

    return-void
.end method
