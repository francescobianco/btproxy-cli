.class Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;
.super Ljava/lang/Object;
.source "IntelligentNotificationAddServiceOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)V
    .registers 2

    .line 1083
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1086
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    iget v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->index:I

    .line 1087
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    iget v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->index:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_20

    .line 1088
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->access$100(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_74

    .line 1090
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->index:I

    .line 1091
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->access$100(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    iget-object v2, v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->timeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1092
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const-string v2, "NOTICE"

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1093
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->access$202(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;Z)Z

    .line 1094
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 1095
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/sevice/SendMessage;

    .line 1096
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->access$300(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;ILjava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->access$100(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_74
    :goto_74
    return-void
.end method
