.class Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;
.super Landroid/os/Handler;
.source "FirmwareUpdateOtaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)V
    .registers 2

    .line 1364
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1367
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1368
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1370
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "code2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ggrrt6"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_43

    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "info2:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "   msg.what:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ggrrt6\u539f\u59cb"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_43
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v5, :cond_90

    .line 1377
    sput-boolean v6, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1378
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1379
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1380
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->progressRate:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->tvTips2:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100209

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27a

    .line 1382
    :cond_90
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xc

    if-ne v2, v5, :cond_262

    .line 1383
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1384
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  info2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ota success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "update_comple"

    const-string v8, "c60_fail_ota"

    const-string v9, "tttre4"

    if-eqz v4, :cond_132

    .line 1387
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z
    invoke-static {v1, v6}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2402(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 1388
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 1390
    :try_start_d7
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V
    :try_end_de
    .catch Ljava/lang/IllegalStateException; {:try_start_d7 .. :try_end_de} :catch_de

    .line 1395
    :catch_de
    :cond_de
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1396
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1397
    const-string v1, "ota complete  c60_fail_ota = false"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10020c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4500(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V

    .line 1399
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1400
    const-string v1, "AppApplication.isOtaUpdate== false   777"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1402
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1403
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z
    invoke-static {v1, v7}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 1404
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I
    invoke-static {v1, v7}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1602(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    .line 1405
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object v1

    if-eqz v1, :cond_12b

    .line 1406
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->mGattConnection:Lcom/keephealth/android/util/telinkota/GattConnection;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Lcom/keephealth/android/util/telinkota/GattConnection;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/keephealth/android/util/telinkota/GattConnection;->clearAll(Z)V

    .line 1408
    :cond_12b
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    goto/16 :goto_27a

    .line 1409
    :cond_132
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v10, "ota fail"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v10, "  code2:"

    const-string v11, " isUpdateSuccess:"

    const-string v12, "\u56fa\u4ef6\u66f4\u65b0 -- \u5347\u7ea7\u5931\u8d25: "

    const-string v13, "\u5931\u8d25111"

    const-string v14, "AppApplication.isOtaUpdate== false   888"

    const v15, 0x7f100207

    if-eqz v4, :cond_1ba

    .line 1410
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4600(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V

    .line 1411
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1412
    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1415
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1416
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z
    invoke-static {v3, v7}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 1417
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I
    invoke-static {v3, v7}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1602(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    .line 1418
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1419
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1420
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    .line 1421
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4700(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27a

    .line 1422
    :cond_1ba
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ota started"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25c

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "connect success"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d4

    goto/16 :goto_25c

    .line 1425
    :cond_1d4
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z

    move-result v4

    if-nez v4, :cond_27a

    .line 1426
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->blScanReconnectRetry:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)I

    move-result v4

    const/4 v6, 0x3

    if-ge v4, v6, :cond_1e9

    const/16 v4, 0x1d

    if-ne v2, v4, :cond_27a

    .line 1427
    :cond_1e9
    const-string v4, "\u5f53\u524d\u9875\u9762 FirmwareUpdateOtaActivity: \u91cd\u8fde\u4e09\u6b21\u5347\u7ea7\u5931\u8d25"

    invoke-static {v7, v4}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1428
    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4800(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Ljava/lang/String;)V

    .line 1429
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1430
    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1433
    sput-boolean v7, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1434
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isReconnect:Z
    invoke-static {v3, v7}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    .line 1435
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->sendNumber:I
    invoke-static {v3, v7}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$1602(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;I)I

    .line 1436
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1437
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1438
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->finish()V

    .line 1439
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$4900(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2400(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27a

    .line 1423
    :cond_25c
    :goto_25c
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity$16;->this$0:Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->isUpdateSuccess:Z
    invoke-static {v1, v7}, Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;->access$2402(Lcom/keephealth/android/ui/device/activity/FirmwareUpdateOtaActivity;Z)Z

    goto :goto_27a

    .line 1443
    :cond_262
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_26d

    .line 1444
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1445
    iget v1, v1, Landroid/os/Message;->arg2:I

    goto :goto_27a

    .line 1453
    :cond_26d
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_27a

    .line 1454
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    :cond_27a
    :goto_27a
    return-void
.end method
