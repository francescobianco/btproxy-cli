.class Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1$1;
.super Ljava/lang/Object;
.source "VibrateViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1$1;->this$1:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1$1;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1$1;->val$bytes:[B

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    new-array v3, v1, [B

    const/4 v4, 0x0

    move v5, v4

    .line 76
    :goto_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_31

    add-int/lit8 v6, v5, 0x2

    .line 77
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 78
    div-int/lit8 v5, v5, 0x2

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    move v5, v6

    goto :goto_18

    :cond_31
    if-lez v1, :cond_b6

    .line 81
    aget-byte v0, v3, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v5, 0xf0

    if-ne v0, v5, :cond_b6

    const/4 v0, 0x3

    aget-byte v5, v3, v0

    if-nez v5, :cond_b6

    const/4 v5, 0x4

    aget-byte v6, v3, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_b6

    add-int/lit8 v1, v1, -0x1

    .line 84
    invoke-static {v3, v7, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    array-length v6, v1

    div-int/2addr v6, v7

    .line 91
    array-length v8, v1

    rem-int/2addr v8, v7

    if-nez v8, :cond_ae

    move v8, v4

    :goto_58
    if-ge v8, v7, :cond_68

    mul-int v9, v8, v6

    add-int v10, v9, v6

    .line 97
    invoke-static {v1, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 98
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_58

    .line 100
    :cond_68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b6

    .line 102
    :goto_73
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_a4

    .line 103
    new-instance v6, Lcom/keephealth/android/model/bean/SetVibrateBean;

    invoke-direct {v6}, Lcom/keephealth/android/model/bean/SetVibrateBean;-><init>()V

    .line 104
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    if-eqz v8, :cond_a1

    .line 105
    array-length v9, v8

    const/4 v10, 0x6

    if-ne v9, v10, :cond_a1

    .line 106
    aget-byte v9, v8, v2

    invoke-virtual {v6, v9}, Lcom/keephealth/android/model/bean/SetVibrateBean;->setType(I)V

    .line 107
    aget-byte v9, v8, v0

    invoke-virtual {v6, v9}, Lcom/keephealth/android/model/bean/SetVibrateBean;->setStyle(I)V

    .line 108
    aget-byte v9, v8, v5

    invoke-virtual {v6, v9}, Lcom/keephealth/android/model/bean/SetVibrateBean;->setVibrateStrong(I)V

    .line 109
    aget-byte v8, v8, v7

    invoke-virtual {v6, v8}, Lcom/keephealth/android/model/bean/SetVibrateBean;->setVibrateTime(I)V

    .line 110
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 114
    :cond_a4
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1$1;->this$1:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->getvibrateList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_b6

    .line 92
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6570\u7ec4\u957f\u5ea6\u65e0\u6cd5\u5747\u5206"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    :goto_b6
    return-void
.end method
