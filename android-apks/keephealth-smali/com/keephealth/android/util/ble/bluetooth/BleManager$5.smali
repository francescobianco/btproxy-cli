.class Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;
.super Ljava/lang/Object;
.source "BleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connect(ZLcom/keephealth/android/model/bean/BLEDevice;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

.field final synthetic val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BleManager;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 783
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    move-object/from16 v1, p0

    .line 788
    const-string v0, " - "

    const-string v2, "hfgffr2"

    .line 0
    const-string v3, "\u914d\u5bf9\u8fdb\u53bb4444444:"

    const-string v4, "bluetoothDevice:"

    const-string v5, "\u914d\u5bf9\u8fdb\u53bb333333:"

    const-string v6, "run:\u914d\u5bf9\u6d4b\u8bd5 \u6d4b\u8bd54: "

    const-string v7, "run:\u914d\u5bf9\u6d4b\u8bd5 \u6d4b\u8bd55: "

    const-string v8, "run:\u914d\u5bf9\u6d4b\u8bd5 \u6d4b\u8bd5444: "

    const-string v9, "mBluetoothDevice.getDeviceType():"

    const-string v10, " ! isQ32Device e:"

    const-string v11, "mBluetoothDevice.mDeviceName:"

    const-string v12, "run:\u914d\u5bf9\u6d4b\u8bd5 \u6d4b\u8bd53: "

    const-string v13, "run:\u914d\u5bf9\u6d4b\u8bd5 \u6d4b\u8bd52: "

    const-string v14, "e:"

    .line 788
    iget-object v15, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mConnected:Z
    invoke-static {v15}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$800(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Z

    move-result v15

    move-object/from16 v16, v14

    const/4 v14, 0x0

    if-nez v15, :cond_607

    .line 790
    iget-object v15, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/keephealth/android/util/CommonUtil;->isOPen(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_3a

    .line 791
    iget-object v15, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v15}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->closeGatt()V

    .line 793
    :cond_3a
    sput v14, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 794
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    const/16 v17, 0x1

    move-object/from16 v18, v10

    if-lt v15, v14, :cond_48c

    .line 796
    :try_start_46
    iget-object v14, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v15, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v15}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v15

    iget-object v15, v15, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    .line 797
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object v15

    const-string v10, "run:\u914d\u5bf9\u6d4b\u8bd5 \u6d4b\u8bd51"

    invoke-static {v15, v10}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v14, :cond_77

    .line 800
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    iget-object v14, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v14}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v14

    iget-object v14, v14, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v14}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14
    :try_end_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_77} :catch_5d1

    .line 803
    :cond_77
    :try_start_77
    sput-boolean v17, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 804
    const-string v10, "tttre4"

    const-string v15, "start--connect..."

    invoke-static {v10, v15}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_484

    .line 806
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v15}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v15

    iget-object v15, v15, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ae} :catch_471
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_ae} :catch_5d1

    const-string v13, "bluetoothDevice.connectGatt"

    const-string v15, "tty5rt"

    move-object/from16 v19, v9

    const-string v9, "\u914d\u5bf9\u8fdb\u53bb22222:"

    move-object/from16 v20, v4

    const-string v4, "\u914d\u5bf9\u8fdb\u53bb11111:"

    move-object/from16 v21, v8

    const-string v8, "mBluetoothDevice.bluetoothDevice?????????????:"

    if-eqz v10, :cond_270

    .line 808
    :try_start_c0
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cb} :catch_471
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c0 .. :try_end_cb} :catch_5d1

    move-object/from16 v25, v2

    :try_start_cd
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isQ32Device(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v11

    iget-object v11, v11, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isQ32Device(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isQ32Device(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 810
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v0

    if-nez v0, :cond_17f

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_14c

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 816
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto/16 :goto_484

    .line 819
    :cond_14c
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v0, v3, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 820
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_484

    .line 824
    :cond_17f
    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string v0, "drer4re5"

    const-string v2, "start_connect---------"

    invoke-static {v0, v2}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v20

    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v21, 0x0

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v24}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_484

    .line 829
    :cond_1a5
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_248

    .line 831
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v0

    if-nez v0, :cond_225

    if-eqz v14, :cond_1f2

    .line 834
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_484

    .line 837
    :cond_1f2
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v14, v0, v4, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 838
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_484

    .line 842
    :cond_225
    const-string v0, "\u8bf7\u6c42\u4e86\u8fde\u63a5444 bluetoothDevice.connectGatt ..."
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_227} :catch_26b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cd .. :try_end_227} :catch_5d1

    move-object/from16 v2, v25

    :try_start_229
    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v20

    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v21, 0x0

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v24}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_484

    :cond_248
    move-object/from16 v2, v25

    .line 850
    const-string v0, "\u8bf7\u6c42\u4e86\u8fde\u63a5555 bluetoothDevice.connectGatt ..."

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v20

    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v21, 0x0

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v24}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_484

    :catch_26b
    move-exception v0

    move-object/from16 v2, v25

    goto/16 :goto_472

    .line 856
    :cond_270
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_405

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_292} :catch_471
    .catch Ljava/lang/IllegalArgumentException; {:try_start_229 .. :try_end_292} :catch_5d1

    .line 859
    :try_start_292
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isQ32Device(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_362

    .line 860
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v0

    if-nez v0, :cond_343

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v14, :cond_2e4

    move/from16 v3, v17

    goto :goto_2e5

    :cond_2e4
    const/4 v3, 0x0

    :goto_2e5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_310

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    iget-object v3, v3, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 867
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto/16 :goto_484

    .line 870
    :cond_310
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v0, v4, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 871
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_484

    .line 875
    :cond_343
    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v20

    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v21, 0x0

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v24}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_484

    .line 879
    :cond_362
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3cf

    .line 881
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v0

    if-nez v0, :cond_3b4

    if-eqz v14, :cond_397

    .line 884
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto :goto_3e9

    .line 886
    :cond_397
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v0, v4, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 887
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto :goto_3e9

    .line 890
    :cond_3b4
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v20

    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v21, 0x0

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v24}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_3e9

    .line 893
    :cond_3cf
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v20

    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v21, 0x0

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v24}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 895
    :goto_3e9
    const-string v0, " ! isQ32Device"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ee
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_3ee} :catch_3f0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_292 .. :try_end_3ee} :catch_5d1

    goto/16 :goto_484

    :catch_3f0
    move-exception v0

    .line 898
    :try_start_3f1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_484

    .line 901
    :cond_405
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_456

    .line 902
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v0

    if-nez v0, :cond_43b

    if-eqz v14, :cond_41e

    .line 905
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto :goto_484

    .line 907
    :cond_41e
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v0, v4, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 908
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto :goto_484

    .line 911
    :cond_43b
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v20

    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v21, 0x0

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v24}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_484

    .line 914
    :cond_456
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v20

    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v21, 0x0

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v24}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_470
    .catch Ljava/lang/Exception; {:try_start_3f1 .. :try_end_470} :catch_471
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f1 .. :try_end_470} :catch_5d1

    goto :goto_484

    :catch_471
    move-exception v0

    .line 921
    :goto_472
    :try_start_472
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_484
    :goto_484
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    iput-object v14, v0, Lcom/keephealth/android/app/AppApplication;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_5d1

    .line 930
    :cond_48c
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_4b4

    .line 933
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    iget-object v2, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0
    :try_end_4b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_472 .. :try_end_4b4} :catch_5d1

    .line 936
    :cond_4b4
    :try_start_4b4
    sput-boolean v17, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 937
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56c

    .line 938
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isQ32Device(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_509

    .line 939
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v2

    if-nez v2, :cond_4f3

    if-eqz v0, :cond_4d5

    .line 942
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto/16 :goto_5cb

    .line 944
    :cond_4d5
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 945
    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto/16 :goto_5cb

    .line 948
    :cond_4f3
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_5cb

    .line 952
    :cond_509
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_557

    .line 953
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v2

    if-nez v2, :cond_541

    if-eqz v0, :cond_523

    .line 956
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto/16 :goto_5cb

    .line 958
    :cond_523
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 959
    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto/16 :goto_5cb

    .line 962
    :cond_541
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto/16 :goto_5cb

    .line 965
    :cond_557
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_5cb

    .line 970
    :cond_56c
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1000(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5b7

    .line 971
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32PairSuccess()Z

    move-result v2

    if-nez v2, :cond_5a2

    if-eqz v0, :cond_585

    .line 974
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto :goto_5cb

    .line 976
    :cond_585
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 977
    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    goto :goto_5cb

    .line 980
    :cond_5a2
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_5cb

    .line 983
    :cond_5b7
    iget-object v2, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$900(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mGattCallback:Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1200(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/BleManagerGattCallback;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sput-object v2, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_5cb
    .catch Ljava/lang/Exception; {:try_start_4b4 .. :try_end_5cb} :catch_5cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b4 .. :try_end_5cb} :catch_5d1

    .line 988
    :catch_5cb
    :goto_5cb
    :try_start_5cb
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    iput-object v0, v2, Lcom/keephealth/android/app/AppApplication;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_5d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5cb .. :try_end_5d1} :catch_5d1

    .line 1052
    :catch_5d1
    :goto_5d1
    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 1054
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mListenerList:Ljava/util/Set;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$400(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5df
    :goto_5df
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/LeListener;

    .line 1055
    instance-of v3, v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    if-eqz v3, :cond_5df

    .line 1056
    check-cast v2, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    invoke-virtual {v2}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnecting()V

    goto :goto_5df

    .line 1059
    :cond_5f5
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    if-eqz v0, :cond_60a

    .line 1060
    iget-object v0, v1, Lcom/keephealth/android/util/ble/bluetooth/BleManager$5;->this$0:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BleManager;->mOnLeConnectListener:Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->access$1300(Lcom/keephealth/android/util/ble/bluetooth/BleManager;)Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->onDeviceConnecting()V

    goto :goto_60a

    :cond_607
    move v0, v14

    .line 1063
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    :cond_60a
    :goto_60a
    return-void
.end method
