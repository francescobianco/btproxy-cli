.class Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "IntelligentNotificationAddService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

.field final synthetic val$mTexts:Ljava/lang/String;

.field final synthetic val$mTitles:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1210
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iput-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->val$mTitles:Ljava/lang/String;

    iput-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->val$mTexts:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 7

    .line 1251
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->index:I

    .line 1252
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v2, v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->timeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1253
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const-string v2, "NOTICE"

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1254
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$102(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Z)Z

    .line 1255
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 1256
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/sevice/SendMessage;

    .line 1257
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    # invokes: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, v2, v3, v0, v4}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$200(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1258
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1260
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WriteBleException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 9

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mTitle0:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->val$mTitles:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->val$mTexts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u6d88\u606f"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 1214
    new-array v0, v0, [B

    .line 1215
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 1216
    aget-byte v1, v0, p1

    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v5, 0x8a

    if-ne v2, v5, :cond_62

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_62

    .line 1218
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->val$mTitles:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setMessage2(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1219
    :goto_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_5a

    .line 1220
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    .line 1222
    :cond_5a
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iput v3, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    goto/16 :goto_11f

    :cond_62
    and-int/lit16 v2, v1, 0xff

    const/4 v6, 0x2

    if-ne v2, v5, :cond_91

    .line 1223
    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v3, :cond_91

    .line 1224
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->val$mTexts:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setMessage2(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1225
    :goto_73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_89

    .line 1226
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_73

    .line 1228
    :cond_89
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iput v6, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    goto/16 :goto_11f

    :cond_91
    and-int/lit16 v2, v1, 0xff

    if-ne v2, v5, :cond_ab

    .line 1229
    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v6, :cond_ab

    .line 1230
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->END_MESSAGE:[B

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 1231
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iput v4, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    goto :goto_11f

    :cond_ab
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v5, :cond_11f

    .line 1232
    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v4, :cond_11f

    .line 1233
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const-string v1, "NOTICE"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1234
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isSending:Z
    invoke-static {v0, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$102(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Z)Z

    .line 1235
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iput p1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->index:I

    .line 1236
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->timeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1237
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_108

    .line 1238
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/sevice/SendMessage;

    .line 1239
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, v2, v3, v0, v4}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$200(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1240
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1242
    :cond_108
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput p1, v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    .line 1243
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    const-string v1, ""

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$302(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$402(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Ljava/lang/String;)Ljava/lang/String;

    .line 1245
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->mType:B
    invoke-static {v0, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$502(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;B)B

    :cond_11f
    :goto_11f
    return-void
.end method
