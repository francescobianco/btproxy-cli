.class Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;
.super Landroid/os/AsyncTask;
.source "BluzDeviceSpp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$1;)V
    .registers 3

    .line 189
    invoke-direct {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;-><init>(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    .line 209
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 192
    aget-object p1, p1, v0

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_2b

    const-wide/16 v2, 0x1f4

    .line 196
    :try_start_d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 197
    iget-object v2, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->reConnectTime:I
    invoke-static {v2, v0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$602(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;I)I

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->connectSPP(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$700(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;Landroid/bluetooth/BluetoothDevice;)V

    .line 199
    invoke-virtual {p0}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_21

    return-object v1

    :cond_21
    const/4 p1, 0x1

    .line 202
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 189
    invoke-virtual {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mAutoConnecting:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$802(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;Z)Z

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    iput-boolean v1, v0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->mConnecting:Z

    .line 216
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 217
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->connectSppSuccess()V
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$900(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)V

    goto :goto_1b

    .line 219
    :cond_16
    iget-object p1, p0, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->this$0:Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;

    # invokes: Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->connectSppFail()V
    invoke-static {p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;->access$500(Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp;)V

    :goto_1b
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 189
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/twootablue/ibluz/device/BluzDeviceSpp$ConnectionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
