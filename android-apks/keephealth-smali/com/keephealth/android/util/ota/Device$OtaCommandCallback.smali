.class final Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lcom/keephealth/android/util/ota/Command$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ota/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OtaCommandCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/ota/Device;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/ota/Device;)V
    .registers 2

    .line 406
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ota/Device;Lcom/keephealth/android/util/ota/Device$1;)V
    .registers 3

    .line 406
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;-><init>(Lcom/keephealth/android/util/ota/Device;)V

    return-void
.end method


# virtual methods
.method public error(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;Ljava/lang/String;)V
    .registers 5

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ota_error:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "  command:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "tttre4"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p1, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 461
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->resetOta()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$600(Lcom/keephealth/android/util/ota/Device;)V

    .line 462
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->setOtaProgressChanged()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$700(Lcom/keephealth/android/util/ota/Device;)V

    .line 463
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->onOtaSuccess()V

    goto :goto_5b

    .line 465
    :cond_50
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->resetOta()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$600(Lcom/keephealth/android/util/ota/Device;)V

    .line 466
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ota/Device;->onOtaFailure(I)V

    :goto_5b
    return-void
.end method

.method public success(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;Ljava/lang/Object;)V
    .registers 6

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "command.tag:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "rtrtu5"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object p1, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto/16 :goto_b3

    .line 412
    :cond_25
    iget-object p1, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/4 p3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->sendOtaStartCommand()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$400(Lcom/keephealth/android/util/ota/Device;)V

    goto/16 :goto_b3

    .line 414
    :cond_39
    iget-object p1, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/4 p3, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_4d

    .line 415
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->sendNextOtaPacketCommand(I)Z
    invoke-static {p1, p3}, Lcom/keephealth/android/util/ota/Device;->access$500(Lcom/keephealth/android/util/ota/Device;I)Z

    goto :goto_b3

    .line 416
    :cond_4d
    iget-object p1, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 418
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->resetOta()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$600(Lcom/keephealth/android/util/ota/Device;)V

    .line 419
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->setOtaProgressChanged()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$700(Lcom/keephealth/android/util/ota/Device;)V

    .line 420
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->onOtaSuccess()V

    goto :goto_b3

    .line 421
    :cond_6b
    iget-object p1, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 423
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->sendOtaEndCommand()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$800(Lcom/keephealth/android/util/ota/Device;)V

    goto :goto_b3

    .line 428
    :cond_7e
    iget-object p1, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x2

    if-eqz p1, :cond_96

    .line 446
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->sendNextOtaPacketCommand(I)Z
    invoke-static {p1, p3}, Lcom/keephealth/android/util/ota/Device;->access$500(Lcom/keephealth/android/util/ota/Device;I)Z

    .line 447
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->setOtaProgressChanged()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$700(Lcom/keephealth/android/util/ota/Device;)V

    goto :goto_b3

    .line 448
    :cond_96
    iget-object p1, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 449
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->sendNextOtaPacketCommand(I)Z
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ota/Device;->access$500(Lcom/keephealth/android/util/ota/Device;I)Z

    goto :goto_b3

    .line 450
    :cond_a8
    iget-object p1, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :goto_b3
    return-void
.end method

.method public timeout(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;)Z
    .registers 5

    .line 472
    iget-object v0, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 474
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->resetOta()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$600(Lcom/keephealth/android/util/ota/Device;)V

    .line 475
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->setOtaProgressChanged()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$700(Lcom/keephealth/android/util/ota/Device;)V

    .line 476
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Device;->onOtaSuccess()V

    goto :goto_49

    .line 478
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeout_peripheral:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  command:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gfgf433"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    # invokes: Lcom/keephealth/android/util/ota/Device;->resetOta()V
    invoke-static {p1}, Lcom/keephealth/android/util/ota/Device;->access$600(Lcom/keephealth/android/util/ota/Device;)V

    .line 480
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Device$OtaCommandCallback;->this$0:Lcom/keephealth/android/util/ota/Device;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ota/Device;->onOtaFailure(I)V

    :goto_49
    const/4 p1, 0x0

    return p1
.end method
