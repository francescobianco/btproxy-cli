.class Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;
.super Ljava/lang/Object;
.source "ScanDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1128
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-keephealth-android-ui-device-activity-ScanDeviceActivity$24$1([B)V
    .registers 9

    .line 0
    const/4 v0, 0x3

    .line 1139
    aget-byte p1, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_154

    .line 1140
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2202(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z

    .line 1141
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-nez p1, :cond_48

    .line 1142
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    new-instance v0, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;

    .line 1143
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 1144
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->scanAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 1147
    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "connectDevice_3:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gff333"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1149
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PersonInfoActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ""

    const-string v2, "class"

    const-string v3, "classStr"

    const-string v4, "PairSuccessActivity"

    if-eqz p1, :cond_c5

    .line 1154
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-class v6, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1155
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {v5, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1156
    const-class p1, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    sput-object v4, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 1157
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    sget-object v4, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 1159
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    goto/16 :goto_150

    .line 1160
    :cond_c5
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "MainActivity"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 1161
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-class v6, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1162
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {v5, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1163
    const-class p1, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    sput-object v4, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 1164
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    sget-object v4, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 1166
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    goto :goto_150

    .line 1167
    :cond_10b
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->fromActivity:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3800(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "AddMemberActivity"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_150

    .line 1168
    new-instance p1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const-class v6, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    invoke-direct {p1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1169
    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {v5, p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1170
    const-class p1, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    sput-object v4, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    .line 1171
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    sget-object v4, Lcom/keephealth/android/app/AppApplication;->className:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    .line 1173
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->finish()V

    .line 1175
    :cond_150
    :goto_150
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    goto/16 :goto_1f4

    :cond_154
    const/4 v3, 0x2

    if-eq p1, v0, :cond_159

    if-ne p1, v3, :cond_1f4

    .line 1177
    :cond_159
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1178
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isConnecting:Z
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$2202(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Z)Z

    const/16 p1, 0x1a

    const/4 v0, 0x0

    .line 1179
    invoke-static {v0, p1}, Lcom/keephealth/android/util/SPHelper;->saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    .line 1180
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    .line 1181
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V

    .line 1182
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    new-array v5, v2, [Ljava/util/UUID;

    sget-object v6, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ:Ljava/util/UUID;

    aput-object v6, v5, v1

    const/16 v6, 0xa

    invoke-virtual {p1, v6, v1, v4, v5}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1184
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v4, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_FFD2:Ljava/util/UUID;

    new-array v2, v2, [Ljava/util/UUID;

    sget-object v5, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->READ_FFD2:Ljava/util/UUID;

    aput-object v5, v2, v1

    invoke-virtual {p1, v6, v1, v4, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    .line 1186
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 1187
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V

    .line 1188
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v2, 0x5

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showScanDialog(I)V
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3900(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V

    .line 1189
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->connectDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;

    .line 1190
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    move-result-object p1

    if-eqz p1, :cond_1ea

    .line 1191
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connecting(I)V

    .line 1192
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1193
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$200(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->showList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$100(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->setList(Ljava/util/List;)V

    .line 1195
    :cond_1ea
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v0, 0x6

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->isOpenBle(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$4000(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V

    .line 1196
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    :cond_1f4
    :goto_1f4
    return-void
.end method

.method public run()V
    .registers 6

    const/16 v0, 0x14

    .line 1131
    new-array v0, v0, [B

    .line 1132
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 1133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tty5rt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " CmdHelper.setPairingcode_to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1135
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0x8c

    if-ne v1, v4, :cond_63

    .line 1137
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    new-instance v2, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;[B)V

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_8d

    .line 1201
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " CmdHelper.setPairingcode_to_flag_start:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24$1;->this$1:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity$24;->this$0:Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;

    const/4 v1, 0x1

    # invokes: Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->failPair(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;->access$3700(Lcom/keephealth/android/ui/device/activity/ScanDeviceActivity;I)V

    :goto_8d
    return-void
.end method
