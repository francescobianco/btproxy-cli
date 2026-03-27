.class Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;
.super Ljava/lang/Object;
.source "MoreSetActivity.java"

# interfaces
.implements Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSwitched$0$com-keephealth-android-ui-device-activity-MoreSetActivity$2(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 312
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    invoke-static {p1}, Lcom/keephealth/android/util/CalendarUtil;->checkPermissionsForUnity(Landroid/app/Activity;)V

    return-void
.end method

.method public onSwitched(Z)V
    .registers 5

    .line 304
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->isClickSchedule:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->access$102(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;Z)Z

    .line 306
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_79

    .line 307
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    invoke-direct {p1, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    .line 308
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    .line 309
    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v1, 0x7f100193

    .line 310
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;)V

    const v2, 0x7f100317

    .line 311
    invoke-virtual {p1, v2, v1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 313
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V

    .line 314
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->scheduleStatus:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->access$200(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_64

    .line 315
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSechule:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    goto :goto_6b

    .line 317
    :cond_64
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSechule:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/CustomToggleButton;->setSwitchState(Z)V

    .line 319
    :goto_6b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->isClickSchedule:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->access$100(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 320
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->isClickSchedule:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->access$102(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;Z)Z

    goto :goto_93

    .line 324
    :cond_79
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->ilSechule:Lcom/keephealth/android/views/CustomToggleButton;

    invoke-virtual {v0}, Lcom/keephealth/android/views/CustomToggleButton;->getSwitchState()Z

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->openOrCloseSchedule(Z)[B

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2$1;-><init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;)V

    const-string v2, "openOrCloseSchedule2"

    invoke-virtual {p1, v2, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_93
    :goto_93
    return-void
.end method
