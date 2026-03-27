.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 386
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$1$com-keephealth-android-ui-device-activity-ScanDeviceActivity$5(Landroid/content/DialogInterface;I)V
    .registers 8

    .line 390
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_22

    .line 394
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 395
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 398
    :cond_22
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->enableBtLauncher:Landroidx/activity/result/ActivityResultLauncher;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 399
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 381
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->pos:I
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)I

    move-result p1

    const v0, 0x7f1001c8

    if-nez p1, :cond_bb

    .line 382
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result p1

    if-nez p1, :cond_79

    .line 383
    new-instance p1, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->isVertical(Z)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f10030b

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setTitle(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5$$ExternalSyntheticLambda0;-><init>()V

    const v1, 0x7f100193

    .line 385
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    const v0, 0x7f100474

    .line 388
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setMessage(I)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;)V

    const v1, 0x7f100257

    .line 389
    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/CommonDialog$Builder;

    move-result-object p1

    .line 401
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog$Builder;->create()Lcom/keephealth/android/views/dialog/CommonDialog;

    move-result-object p1

    .line 402
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-string v1, "bluetooth_open_cancel"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 405
    :try_start_57
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/CommonDialog;->show()V
    :try_end_5a
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_c8

    :catch_5b
    move-exception p1

    .line 407
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9519\u8bef\u65e5\u5fd7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    .line 411
    :cond_79
    invoke-static {}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick()Z

    move-result p1

    if-nez p1, :cond_c8

    .line 412
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Ljava/lang/String;)V

    goto :goto_c8

    .line 415
    :cond_95
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    if-eqz p1, :cond_a2

    .line 417
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog2:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 419
    :cond_a2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-class v1, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    const-string v0, "type"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_c8

    .line 427
    :cond_bb
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$5;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    return-void
.end method
