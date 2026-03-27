.class Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "SportModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/SportModeActivity;->invalidateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$com-keephealth-android-ui-device-activity-SportModeActivity$1(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 18

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0x14

    .line 678
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 357
    new-array v3, v1, [B

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    invoke-static {v4, v3}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 v4, 0x0

    .line 374
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 382
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 359
    aget-byte v7, v3, v4

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xaf

    if-ne v7, v8, :cond_b36

    .line 361
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->fristCmd:Z
    invoke-static {v7, v4}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$002(Lcom/keephealth/android/ui/device/activity/SportModeActivity;Z)Z

    .line 362
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v7}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 363
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v7}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/4 v7, 0x4

    .line 364
    aget-byte v8, v3, v7

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v8

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v8

    const/4 v9, 0x5

    .line 365
    aget-byte v10, v3, v9

    invoke-static {v10}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v10

    invoke-static {v10}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v10

    const/4 v11, 0x6

    .line 366
    aget-byte v12, v3, v11

    invoke-static {v12}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v12

    invoke-static {v12}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v12

    const/4 v13, 0x7

    .line 367
    aget-byte v3, v3, v13

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v3

    .line 370
    new-instance v14, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v14}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    .line 371
    iget-object v15, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v15}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v1, 0x7f10058c

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const v1, 0x7f0d02ea

    .line 372
    invoke-virtual {v14, v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 373
    invoke-virtual {v14, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 374
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_c3

    .line 375
    aget-byte v1, v8, v4

    if-ne v1, v15, :cond_ae

    .line 376
    invoke-virtual {v14, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 377
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v1, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c3

    .line 380
    :cond_ae
    invoke-virtual {v14, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 381
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_c3
    :goto_c3
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    .line 387
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v14, 0x7f10058b

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const v5, 0x7f0d0270

    .line 388
    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 389
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 390
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 391
    aget-byte v5, v8, v15

    if-ne v5, v15, :cond_113

    .line 392
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 393
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v1, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12c

    .line 396
    :cond_113
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 397
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_12c
    :goto_12c
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    .line 403
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v14, 0x7f100589

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const v5, 0x7f0d0263

    .line 404
    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    const/4 v5, 0x3

    .line 405
    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 406
    iget-object v14, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v14}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_196

    .line 407
    aget-byte v13, v8, v5

    if-ne v13, v15, :cond_17d

    .line 408
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 409
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_196

    .line 412
    :cond_17d
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 413
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_196
    :goto_196
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    .line 419
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1005a0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const v13, 0x7f0d02e4

    .line 420
    invoke-virtual {v1, v13}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 421
    invoke-virtual {v1, v7}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 422
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ff

    .line 423
    aget-byte v13, v8, v7

    if-ne v13, v15, :cond_1e6

    .line 424
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 425
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ff

    .line 428
    :cond_1e6
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 429
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_1ff
    :goto_1ff
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v13, 0x7f0d0279

    .line 435
    invoke-virtual {v1, v13}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 436
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1005a1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v1, v9}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 438
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_268

    .line 439
    aget-byte v13, v8, v9

    if-ne v13, v15, :cond_24f

    .line 440
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 441
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_268

    .line 444
    :cond_24f
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 445
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_268
    :goto_268
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v13, 0x7f0d02e6

    .line 451
    invoke-virtual {v1, v13}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 452
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f10059d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 454
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d1

    .line 455
    aget-byte v13, v8, v11

    if-ne v13, v15, :cond_2b8

    .line 456
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 457
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d1

    .line 460
    :cond_2b8
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 461
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_2d1
    :goto_2d1
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v13, 0x7f0d027d

    .line 467
    invoke-virtual {v1, v13}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 468
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f10059c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/4 v13, 0x7

    .line 469
    invoke-virtual {v1, v13}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 470
    iget-object v14, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v14}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33b

    .line 471
    aget-byte v8, v8, v13

    if-ne v8, v15, :cond_322

    .line 472
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 473
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v8}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v1, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33b

    .line 476
    :cond_322
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 477
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v8}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_33b
    :goto_33b
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v8, 0x7f0d027b

    .line 483
    invoke-virtual {v1, v8}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 484
    iget-object v8, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v8}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f100588

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 485
    invoke-virtual {v1, v8}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 486
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a6

    .line 487
    aget-byte v11, v10, v4

    if-ne v11, v15, :cond_38d

    .line 488
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 489
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a6

    .line 492
    :cond_38d
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 493
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_3a6
    :goto_3a6
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v11, 0x7f0d02e0

    .line 499
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 500
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f10059e

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v11, 0x9

    .line 501
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 502
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_411

    .line 503
    aget-byte v13, v10, v15

    if-ne v13, v15, :cond_3f8

    .line 504
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 505
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_411

    .line 508
    :cond_3f8
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 509
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_411
    :goto_411
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v11, 0x7f0d026c

    .line 515
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 516
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100595

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v11, 0xa

    .line 517
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 518
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_47d

    const/4 v13, 0x2

    .line 519
    aget-byte v13, v10, v13

    if-ne v13, v15, :cond_464

    .line 520
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 521
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47d

    .line 524
    :cond_464
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 525
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_47d
    :goto_47d
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v11, 0x7f0d0271

    .line 531
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 532
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100599

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v11, 0xb

    .line 533
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 534
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4e8

    .line 535
    aget-byte v13, v10, v5

    if-ne v13, v15, :cond_4cf

    .line 536
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 537
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e8

    .line 540
    :cond_4cf
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 541
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_4e8
    :goto_4e8
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v11, 0x7f0d0265

    .line 547
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 548
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f10058a

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v11, 0xc

    .line 549
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 550
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_553

    .line 551
    aget-byte v13, v10, v7

    if-ne v13, v15, :cond_53a

    .line 552
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 553
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_553

    .line 556
    :cond_53a
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 557
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_553
    :goto_553
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v11, 0x7f0d02e7

    .line 563
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 564
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f10059f

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v11, 0xd

    .line 565
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 566
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5be

    .line 567
    aget-byte v13, v10, v9

    if-ne v13, v15, :cond_5a5

    .line 568
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 569
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5be

    .line 572
    :cond_5a5
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 573
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    :cond_5be
    :goto_5be
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v11, 0x7f0d0286

    .line 579
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 580
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100591

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v11, 0xe

    .line 581
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 582
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_62a

    const/4 v13, 0x6

    .line 583
    aget-byte v14, v10, v13

    if-ne v14, v15, :cond_611

    .line 584
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 585
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62a

    .line 588
    :cond_611
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 589
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_62a
    :goto_62a
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v11, 0x7f0d0288

    .line 595
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 596
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100592

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v11, 0xf

    .line 597
    invoke-virtual {v1, v11}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 598
    iget-object v13, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_696

    const/4 v13, 0x7

    .line 599
    aget-byte v10, v10, v13

    if-ne v10, v15, :cond_67d

    .line 600
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 601
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v10}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_696

    .line 604
    :cond_67d
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 605
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v10}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_696
    :goto_696
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v10, 0x7f0d02aa

    .line 611
    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 612
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f10058f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v10, 0x10

    .line 613
    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 614
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_701

    .line 615
    aget-byte v11, v12, v4

    if-ne v11, v15, :cond_6e8

    .line 616
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 617
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_701

    .line 620
    :cond_6e8
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 621
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_701
    :goto_701
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v10, 0x7f0d02e1

    .line 627
    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 628
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100597

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v10, 0x11

    .line 629
    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 630
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_76c

    .line 631
    aget-byte v11, v12, v15

    if-ne v11, v15, :cond_753

    .line 632
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 633
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76c

    .line 636
    :cond_753
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 637
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_76c
    :goto_76c
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v10, 0x7f0d0284

    .line 643
    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 644
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100590

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v10, 0x12

    .line 645
    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 646
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7d8

    const/4 v11, 0x2

    .line 647
    aget-byte v11, v12, v11

    if-ne v11, v15, :cond_7bf

    .line 648
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 649
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d8

    .line 652
    :cond_7bf
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 653
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :cond_7d8
    :goto_7d8
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v10, 0x7f0d0288

    .line 659
    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 660
    iget-object v10, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v10}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f10058e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v10, 0x13

    .line 661
    invoke-virtual {v1, v10}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 662
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_843

    .line 663
    aget-byte v5, v12, v5

    if-ne v5, v15, :cond_82a

    .line 664
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 665
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v1, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_843

    .line 668
    :cond_82a
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 669
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_843
    :goto_843
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v5, 0x7f0d02eb

    .line 675
    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 676
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f10059a

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v5, 0x14

    .line 677
    invoke-virtual {v1, v5}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 678
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a2

    .line 679
    aget-byte v5, v12, v7

    if-ne v5, v15, :cond_88d

    .line 680
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 681
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a2

    .line 684
    :cond_88d
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 685
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_8a2
    :goto_8a2
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v2, 0x7f0d02dd

    .line 691
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 692
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100596

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v2, 0x15

    .line 693
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 694
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90d

    .line 695
    aget-byte v5, v12, v9

    if-ne v5, v15, :cond_8f4

    .line 696
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 697
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90d

    .line 700
    :cond_8f4
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 701
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :cond_90d
    :goto_90d
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v2, 0x7f0d027e

    .line 707
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 708
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10058d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v2, 0x16

    .line 709
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 710
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_979

    const/4 v5, 0x6

    .line 711
    aget-byte v5, v12, v5

    if-ne v5, v15, :cond_960

    .line 712
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 713
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_979

    .line 716
    :cond_960
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 717
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_979
    :goto_979
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v2, 0x7f0d02ed

    .line 723
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 724
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10059b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v2, 0x17

    .line 725
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 726
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v2

    const/16 v5, 0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9eb

    const/4 v2, 0x7

    .line 727
    aget-byte v2, v12, v2

    if-ne v2, v15, :cond_9d0

    .line 728
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 729
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9eb

    .line 732
    :cond_9d0
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 733
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_9eb
    :goto_9eb
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v2, 0x7f0d028a

    .line 739
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 740
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100593

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v2, 0x18

    .line 741
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 742
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v2

    const/16 v5, 0x18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5c

    .line 743
    aget-byte v2, v3, v4

    if-ne v2, v15, :cond_a41

    .line 744
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 745
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5c

    .line 748
    :cond_a41
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 749
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :cond_a5c
    :goto_a5c
    new-instance v1, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/SportModeBean;-><init>()V

    const v2, 0x7f0d02a7

    .line 755
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportRes(I)V

    .line 756
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100594

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportName(Ljava/lang/String;)V

    const/16 v2, 0x19

    .line 757
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportNo(I)V

    .line 758
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v2

    const/16 v5, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_acd

    .line 759
    aget-byte v2, v3, v15

    if-ne v2, v15, :cond_ab2

    .line 760
    invoke-virtual {v1, v15}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 761
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_acd

    .line 764
    :cond_ab2
    invoke-virtual {v1, v4}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->setSportStaus(Z)V

    .line 765
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->statusMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$400(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    :cond_acd
    :goto_acd
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    new-instance v2, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->openSport:Ljava/util/List;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$200(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$502(Lcom/keephealth/android/ui/device/activity/SportModeActivity;Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    .line 770
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$500(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->setmClickListener(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;)V

    .line 771
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$500(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 772
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b09

    .line 773
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_b31

    .line 775
    :cond_b09
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    new-instance v2, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->closeSport:Ljava/util/List;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$300(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    # setter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$602(Lcom/keephealth/android/ui/device/activity/SportModeActivity;Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    .line 776
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$600(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->setmClickListener(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;)V

    .line 777
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideAdapter:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$600(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 779
    :goto_b31
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideLoading()V

    :cond_b36
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 797
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideLoading()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->hideLoading()V

    .line 355
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->fristCmd:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$000(Lcom/keephealth/android/ui/device/activity/SportModeActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 356
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_47

    :cond_18
    const/16 v0, 0x14

    .line 783
    new-array v0, v0, [B

    .line 784
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 785
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xaf

    if-ne p1, v0, :cond_47

    .line 787
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->fristCmd:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$002(Lcom/keephealth/android/ui/device/activity/SportModeActivity;Z)Z

    .line 788
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/activity/SportModeActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->access$100(Lcom/keephealth/android/ui/device/activity/SportModeActivity;Ljava/lang/String;)V

    .line 789
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/SportModeActivity$1;->this$0:Lcom/keephealth/android/ui/device/activity/SportModeActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/SportModeActivity;->finish()V

    :cond_47
    :goto_47
    return-void
.end method
