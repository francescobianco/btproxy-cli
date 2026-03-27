.class Lcom/keephealth/android/util/telinkota/OtaController$1;
.super Ljava/lang/Object;
.source "OtaController.java"

# interfaces
.implements Lcom/keephealth/android/util/telinkota/Command$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/telinkota/OtaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/telinkota/OtaController;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/telinkota/OtaController;)V
    .registers 2

    .line 569
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Command;Ljava/lang/String;)V
    .registers 5

    .line 632
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # getter for: Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$000(Lcom/keephealth/android/util/telinkota/OtaController;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 633
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error packet : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " errorMsg : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 634
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 635
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    const/4 p2, 0x0

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->onEndCmdComplete(Z)V
    invoke-static {p1, p2}, Lcom/keephealth/android/util/telinkota/OtaController;->access$500(Lcom/keephealth/android/util/telinkota/OtaController;Z)V

    goto :goto_49

    .line 637
    :cond_3b
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->resetOta()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$800(Lcom/keephealth/android/util/telinkota/OtaController;)V

    .line 638
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    const/16 p2, 0x14

    const-string p3, "OTA fail: packet sent err"

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    :goto_49
    return-void
.end method

.method public success(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Command;Ljava/lang/Object;)V
    .registers 5

    .line 573
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # getter for: Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$000(Lcom/keephealth/android/util/telinkota/OtaController;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 574
    :cond_9
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/4 p3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto/16 :goto_e2

    .line 581
    :cond_18
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/16 p3, 0xd

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 592
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # getter for: Lcom/keephealth/android/util/telinkota/OtaController;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$100(Lcom/keephealth/android/util/telinkota/OtaController;)Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    move-result-object p1

    iget-boolean p1, p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;->secureBootEnable:Z

    if-eqz p1, :cond_37

    .line 593
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendNextSignCommand()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$200(Lcom/keephealth/android/util/telinkota/OtaController;)V

    goto/16 :goto_e2

    .line 595
    :cond_37
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendNextOtaPacketCommand()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$300(Lcom/keephealth/android/util/telinkota/OtaController;)V

    goto/16 :goto_e2

    .line 598
    :cond_3e
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/4 p3, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 599
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaStartReadCmd()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$400(Lcom/keephealth/android/util/telinkota/OtaController;)V

    goto/16 :goto_e2

    .line 605
    :cond_52
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/16 p3, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 606
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaStartReadCmd()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$400(Lcom/keephealth/android/util/telinkota/OtaController;)V

    goto/16 :goto_e2

    .line 612
    :cond_67
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/4 p3, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_7b

    .line 614
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->onEndCmdComplete(Z)V
    invoke-static {p1, p3}, Lcom/keephealth/android/util/telinkota/OtaController;->access$500(Lcom/keephealth/android/util/telinkota/OtaController;Z)V

    goto :goto_e2

    .line 615
    :cond_7b
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 616
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendOtaEndCommand()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$600(Lcom/keephealth/android/util/telinkota/OtaController;)V

    goto :goto_e2

    .line 617
    :cond_8e
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 618
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->validateOta()Z
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$700(Lcom/keephealth/android/util/telinkota/OtaController;)Z

    move-result p1

    if-nez p1, :cond_e2

    .line 619
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendNextOtaPacketCommand()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$300(Lcom/keephealth/android/util/telinkota/OtaController;)V

    goto :goto_e2

    .line 621
    :cond_a8
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 622
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendNextOtaPacketCommand()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$300(Lcom/keephealth/android/util/telinkota/OtaController;)V

    goto :goto_e2

    .line 623
    :cond_bb
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/16 p3, 0xb

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 624
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendNextSignCommand()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$200(Lcom/keephealth/android/util/telinkota/OtaController;)V

    goto :goto_e2

    .line 625
    :cond_cf
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/16 p2, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 626
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendNextOtaPacketCommand()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$300(Lcom/keephealth/android/util/telinkota/OtaController;)V

    :cond_e2
    :goto_e2
    return-void
.end method

.method public timeout(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Command;)Z
    .registers 6

    .line 644
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # getter for: Lcom/keephealth/android/util/telinkota/OtaController;->otaRunning:Z
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$000(Lcom/keephealth/android/util/telinkota/OtaController;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 645
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "timeout : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/keephealth/android/util/telinkota/Command;->data:[B

    const-string v2, ":"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/telinkota/util/Arrays;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 646
    iget-object p1, p2, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 647
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->onEndCmdComplete(Z)V
    invoke-static {p1, v0}, Lcom/keephealth/android/util/telinkota/OtaController;->access$500(Lcom/keephealth/android/util/telinkota/OtaController;Z)V

    goto :goto_45

    .line 649
    :cond_37
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->resetOta()V
    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/OtaController;->access$800(Lcom/keephealth/android/util/telinkota/OtaController;)V

    .line 650
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$1;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    const/16 p2, 0x15

    const-string v1, "OTA fail: packet sent timeout"

    invoke-virtual {p1, p2, v1}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    :goto_45
    return v0
.end method
