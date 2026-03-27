.class Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;
.super Ljava/lang/Object;
.source "IntelligentNotificationAddService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)V
    .registers 2

    .line 1180
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1183
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->index:I

    .line 1184
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->index:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_20

    .line 1185
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_74

    .line 1187
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->index:I

    .line 1188
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v3, v3, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->timeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1189
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    const-string v3, "NOTICE"

    invoke-virtual {v0, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    .line 1190
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # setter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->isSending:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$102(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;Z)Z

    .line 1191
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 1192
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v0, v0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->sendMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/sevice/SendMessage;

    .line 1193
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmType()I

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/SendMessage;->getmText()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->setSmsEvt(ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, v3, v4, v0, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$200(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1194
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$3;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_74
    :goto_74
    return-void
.end method
