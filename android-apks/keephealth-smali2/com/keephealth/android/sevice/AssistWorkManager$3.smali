.class Lcom/keephealth/android/sevice/AssistWorkManager$3;
.super Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;
.source "AssistWorkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/sevice/AssistWorkManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/AssistWorkManager;ILandroid/content/Context;)V
    .registers 4

    .line 151
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    iput-object p3, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;-><init>(I)V

    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .registers 3

    .line 249
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->answerRingingCall()V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 254
    :cond_d
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    if-nez v0, :cond_12

    return-void

    .line 257
    :cond_12
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/keephealth/android/util/PhoneUtil;->answerRingingCall(Landroid/content/Context;)V

    return-void
.end method

.method public endFindPhone()V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 194
    const-string v0, "gge3d"

    const-string v1, "\u505c\u6b62\u67e5\u627e\u624b\u673a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$202(Lcom/keephealth/android/sevice/AssistWorkManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 199
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_38
    return-void
.end method

.method public endRingingCall()V
    .registers 3

    .line 262
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->endRingingCall()V

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->val$context:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 270
    :cond_e
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/keephealth/android/util/PhoneUtil;->endCall(Landroid/content/Context;)V

    return-void
.end method

.method public endSos()V
    .registers 3

    .line 214
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->endSos()V

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$202(Lcom/keephealth/android/sevice/AssistWorkManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 221
    :cond_23
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 222
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->mVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$300(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_34
    return-void
.end method

.method public findPhone()V
    .registers 7

    .line 154
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->findPhone()V

    .line 155
    const-string v0, "gge3d"

    const-string v1, "\u67e5\u627e\u624b\u673a1-assist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "\u6536\u5230\u624b\u73af\u547d\u4ee4--\u5f00\u59cb\u5bfb\u627e\u624b\u673a\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_83

    .line 163
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u672c\u673a\u6709\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    .line 167
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 168
    iget-object v3, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    const/4 v4, 0x0

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isPairSuccess:Z
    invoke-static {v3, v4}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$502(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    .line 169
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_7c

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 173
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v2, :cond_35

    .line 175
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 176
    iget-object v3, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isPairSuccess:Z
    invoke-static {v3, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$502(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isPairSuccess = true:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isPairSuccess:Z
    invoke-static {v4}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$500(Lcom/keephealth/android/sevice/AssistWorkManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEE33rD"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 182
    :cond_7c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u8fd8\u6ca1\u6709\u5df2\u914d\u5bf9\u7684\u8fdc\u7a0b\u84dd\u7259\u8bbe\u5907\uff01"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    :cond_83
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isRingOrVibrate:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$002(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # invokes: Lcom/keephealth/android/sevice/AssistWorkManager;->playRingtone(Z)V
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$600(Lcom/keephealth/android/sevice/AssistWorkManager;Z)V

    return-void
.end method

.method public intoSportModel()V
    .registers 1

    .line 275
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->intoSportModel()V

    return-void
.end method

.method public quitSportModel()V
    .registers 1

    .line 281
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->quitSportModel()V

    return-void
.end method

.method public sos()V
    .registers 5

    .line 228
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->sos()V

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->val$context:Landroid/content/Context;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5a

    .line 231
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 233
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getSos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5a

    const/4 v1, 0x0

    .line 235
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/SosInfo;

    .line 236
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/SosInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/SosInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5a
    return-void
.end method

.method public startSos()V
    .registers 3

    .line 206
    invoke-super {p0}, Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;->startSos()V

    const/16 v0, 0x40b

    .line 207
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$3;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    const/4 v1, 0x1

    # invokes: Lcom/keephealth/android/sevice/AssistWorkManager;->playRingtone(Z)V
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$600(Lcom/keephealth/android/sevice/AssistWorkManager;Z)V

    return-void
.end method
