.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;
.source "ScanDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scan()V
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

    .line 1255
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u626b\u63cf\u5230\u8bbe\u5907\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FDDEE32"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanCompleted()V
    .registers 7

    .line 1303
    const-string v0, "BLE"

    const/4 v1, 0x0

    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isConnectFailRe:Z

    .line 1304
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnectFail:Z
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4400(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1305
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mBluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    goto :goto_1c

    .line 1307
    :cond_17
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnectFail:Z
    invoke-static {v2, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4402(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z

    .line 1309
    :goto_1c
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mRefreshLayout:Lcom/keephealth/android/views/RecyclerRefreshLayout;

    invoke-virtual {v2}, Lcom/keephealth/android/views/RecyclerRefreshLayout;->onComplete()V

    .line 1311
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x258

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1313
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanNameBeanList2:Ljava/util/List;

    move v2, v1

    .line 1315
    :goto_36
    :try_start_36
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8a

    .line 1316
    new-instance v3, Lcom/keephealth/android/model/bean/ScanNameBean;

    invoke-direct {v3}, Lcom/keephealth/android/model/bean/ScanNameBean;-><init>()V

    .line 1317
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/ScanDeviceBean;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/model/bean/ScanNameBean;->setName(Ljava/lang/String;)V

    .line 1318
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/ScanDeviceBean;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/model/bean/ScanNameBean;->setAddress(Ljava/lang/String;)V

    .line 1319
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanDeviceBeanList:Ljava/util/List;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4300(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/ScanDeviceBean;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/ScanDeviceBean;->getRssi()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/model/bean/ScanNameBean;->setRssi(I)V

    .line 1320
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v4, v4, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanNameBeanList2:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_8a
    move v2, v1

    .line 1322
    :goto_8b
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanNameBeanList2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_ed

    .line 1323
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanNameBeanList2:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/model/bean/ScanNameBean;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/ScanNameBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4584(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_bb} :catch_be

    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    :catch_be
    move-exception v2

    .line 1326
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4600(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u9519\u8bef\u65e5\u5fd7:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u626b\u63cf\u5230\u5b8c\u6210 e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1329
    :cond_ed
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strScan:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->strScan:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trtr5t"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->strScan:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_146

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  \u626b\u63cf\u5230\u5b8c\u6210:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->strScan:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto :goto_190

    .line 1333
    :cond_146
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_190

    .line 1334
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_18a

    .line 1335
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 1337
    :try_start_15e
    const-string v2, "\u5c1d\u8bd5\u91cd\u542f\u84dd\u7259\u5806\u6808..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_177

    const-wide/16 v2, 0x7d0

    .line 1340
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1341
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1342
    const-string v1, "\u84dd\u7259\u91cd\u542f\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18a

    .line 1344
    :cond_177
    const-string v1, "\u84dd\u7259\u7981\u7528\u5931\u8d25\uff0c\u53ef\u80fd\u7cfb\u7edf\u4e0d\u5141\u8bb8 App \u63a7\u5236"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17c
    .catch Ljava/lang/SecurityException; {:try_start_15e .. :try_end_17c} :catch_184
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_17c} :catch_17d

    goto :goto_18a

    :catch_17d
    move-exception v1

    .line 1349
    const-string v2, "\u91cd\u542f\u84dd\u7259\u5806\u6808\u65f6\u51fa\u9519"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18a

    :catch_184
    move-exception v1

    .line 1347
    const-string v2, "\u84dd\u7259\u63a7\u5236\u6743\u9650\u4e0d\u8db3\uff08Android 12+ \u9700\u8981 BLUETOOTH_CONNECT\uff09"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    :cond_18a
    :goto_18a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v1, 0x1

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V

    :cond_190
    :goto_190
    return-void
.end method

.method public onScanFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;)V
    .registers 4

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u626b\u63cf\u9519\u8bef:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rfrtr5r"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2202(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z

    .line 1361
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isConnectFailRe:Z

    .line 1363
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ScanBleException;->getStatus()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3c

    .line 1364
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->onScanCompleted()V

    .line 1365
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4f

    .line 1366
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V

    goto :goto_4f

    .line 1370
    :cond_3c
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4f

    .line 1371
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/16 v0, 0xb

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onScanResult(Landroid/bluetooth/BluetoothDevice;ILcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    .registers 6

    .line 1258
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25$1;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$25;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
