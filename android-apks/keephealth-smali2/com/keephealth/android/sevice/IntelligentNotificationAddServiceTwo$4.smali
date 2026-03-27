.class Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "IntelligentNotificationAddServiceTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

.field final synthetic val$mTexts:Ljava/lang/String;

.field final synthetic val$mTitles:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1161
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iput-object p2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->val$mTitles:Ljava/lang/String;

    iput-object p3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->val$mTexts:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 6

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "E:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FFDf34e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->index:I

    .line 1211
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$100(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iget-object v2, v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->timeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1212
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const-string v2, "NOTICE"

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1213
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$202(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Z)Z

    .line 1214
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 1215
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/sevice/SendMessage;

    .line 1216
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$300(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;ILjava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$100(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1219
    :cond_68
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
    .registers 11

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mTitle0:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->val$mTitles:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->val$mTexts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hfgfr3f2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    .line 1165
    new-array v0, v0, [B

    .line 1166
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 1167
    aget-byte v2, v0, p1

    and-int/lit16 v3, v2, 0xff

    const-string v4, "FF45fd67"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/16 v7, 0x8a

    if-ne v3, v7, :cond_7f

    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_7f

    .line 1169
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->val$mTitles:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setMessage2(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "datas1111:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_77

    .line 1172
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_61

    .line 1174
    :cond_77
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iput v5, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    goto/16 :goto_1af

    :cond_7f
    and-int/lit16 v3, v2, 0xff

    const/4 v8, 0x2

    if-ne v3, v7, :cond_f8

    .line 1175
    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_f8

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mText222:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->val$mTexts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF4534"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->val$mTexts:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setMessage2(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF45fdfd67"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :goto_be
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_f0

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "datas22222:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_be

    .line 1183
    :cond_f0
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iput v8, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    goto/16 :goto_1af

    :cond_f8
    and-int/lit16 v3, v2, 0xff

    if-ne v3, v7, :cond_130

    .line 1184
    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v8, :cond_130

    .line 1185
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "datas3333:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/keephealth/android/util/ble/CmdHelper;->END_MESSAGE:[B

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->END_MESSAGE:[B

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 1187
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iput v6, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    goto/16 :goto_1af

    :cond_130
    and-int/lit16 v2, v2, 0xff

    if-ne v2, v7, :cond_1af

    .line 1188
    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_1af

    .line 1189
    const-string v0, "datas444:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const-string v1, "NOTICE"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1191
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->isSending:Z
    invoke-static {v0, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$202(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Z)Z

    .line 1192
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iput p1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->index:I

    .line 1193
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$100(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->timeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1194
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_198

    .line 1195
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/sevice/SendMessage;

    .line 1196
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$300(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;ILjava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$100(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1198
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput p1, v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    .line 1200
    :cond_198
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iput p1, v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    .line 1201
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    const-string v1, ""

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$402(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Ljava/lang/String;)Ljava/lang/String;

    .line 1202
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$502(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;Ljava/lang/String;)Ljava/lang/String;

    .line 1203
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo$4;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->mType:B
    invoke-static {v0, p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;->access$602(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceTwo;B)B

    :cond_1af
    :goto_1af
    return-void
.end method
