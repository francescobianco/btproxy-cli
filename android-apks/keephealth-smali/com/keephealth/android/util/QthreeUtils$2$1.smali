.class Lcom/keephealth/android/util/QthreeUtils$2$1;
.super Ljava/lang/Object;
.source "QthreeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/QthreeUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/QthreeUtils$2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/QthreeUtils$2;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/keephealth/android/util/QthreeUtils$2$1;->this$0:Lcom/keephealth/android/util/QthreeUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x0

    .line 210
    :goto_1
    iget-object v1, p0, Lcom/keephealth/android/util/QthreeUtils$2$1;->this$0:Lcom/keephealth/android/util/QthreeUtils$2;

    iget-object v1, v1, Lcom/keephealth/android/util/QthreeUtils$2;->val$deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7c

    .line 211
    iget-object v1, p0, Lcom/keephealth/android/util/QthreeUtils$2$1;->this$0:Lcom/keephealth/android/util/QthreeUtils$2;

    iget-object v1, v1, Lcom/keephealth/android/util/QthreeUtils$2;->val$context:Landroid/app/Activity;

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_18

    return-void

    .line 221
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "device:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/keephealth/android/util/QthreeUtils$2$1;->this$0:Lcom/keephealth/android/util/QthreeUtils$2;

    iget-object v2, v2, Lcom/keephealth/android/util/QthreeUtils$2;->val$deviceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/QthreeUtils$2$1;->this$0:Lcom/keephealth/android/util/QthreeUtils$2;

    iget-object v2, v2, Lcom/keephealth/android/util/QthreeUtils$2;->val$deviceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gfgf434"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/keephealth/android/util/QthreeUtils$2$1;->this$0:Lcom/keephealth/android/util/QthreeUtils$2;

    iget-object v1, v1, Lcom/keephealth/android/util/QthreeUtils$2;->val$macAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 223
    iget-object v1, p0, Lcom/keephealth/android/util/QthreeUtils$2$1;->this$0:Lcom/keephealth/android/util/QthreeUtils$2;

    iget-object v1, v1, Lcom/keephealth/android/util/QthreeUtils$2;->val$macAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/util/QthreeUtils$2$1;->this$0:Lcom/keephealth/android/util/QthreeUtils$2;

    iget-object v3, v3, Lcom/keephealth/android/util/QthreeUtils$2;->val$deviceList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 224
    const-string v1, "success..."

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7c
    return-void
.end method
