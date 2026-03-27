.class Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;
.super Ljava/lang/Object;
.source "OTAManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/twootablue/ota/OTAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ota/OTAManager;)V
    .registers 2

    .line 538
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    move-object/from16 v1, p0

    .line 541
    const-string v2, "rtrtu5"

    const-string v3, "rtft8"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mRunning:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z
    invoke-static {v4}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$100(Lcom/keephealth/android/twootablue/ota/OTAManager;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ggrr4"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_20
    :goto_20
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mRunning:Z
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$100(Lcom/keephealth/android/twootablue/ota/OTAManager;)Z

    move-result v0

    if-eqz v0, :cond_57d

    .line 544
    :try_start_28
    const-string v0, "mIO.read()..."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v0

    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->read()I

    move-result v0

    .line 546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget-object v6, v6, Lcom/keephealth/android/twootablue/ota/OTAManager;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x9

    if-eq v0, v5, :cond_6c

    goto :goto_20

    .line 555
    :cond_6c
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v0

    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->read()I

    move-result v0

    .line 556
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commandId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_8c} :catch_563

    const/16 v6, 0x7f

    const/4 v8, 0x7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_48d

    .line 557
    const-string v13, "data"

    const/4 v14, 0x2

    if-eq v0, v14, :cond_407

    const/4 v12, 0x0

    const/4 v14, 0x6

    const/4 v7, 0x5

    const/4 v15, 0x4

    if-eq v0, v9, :cond_1a5

    if-eq v0, v7, :cond_188

    if-eq v0, v14, :cond_120

    if-eq v0, v8, :cond_ed

    const/16 v5, 0x7d

    if-eq v0, v5, :cond_ab

    goto/16 :goto_20

    .line 876
    :cond_ab
    :try_start_ab
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v5

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->readSubTLVs(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B
    invoke-static {v0, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$300(Lcom/keephealth/android/twootablue/ota/OTAManager;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B

    move-result-object v0

    if-nez v0, :cond_b9

    goto/16 :goto_20

    .line 883
    :cond_b9
    aget-byte v5, v0, v10

    invoke-static {v5}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteToInt(B)I

    .line 885
    invoke-static {v0, v11}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToShort([BI)I

    .line 887
    aget-byte v5, v0, v9

    invoke-static {v5}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteToInt(B)I

    move-result v5

    .line 890
    aget-byte v6, v0, v15

    invoke-static {v6}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteToInt(B)I

    .line 892
    invoke-static {v0, v7}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToShort([BI)I

    move-result v6

    .line 895
    new-array v7, v6, [B

    .line 896
    invoke-static {v0, v8, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    const-string v0, "Command 0x0907"

    invoke-static {v0, v7}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->printHexBuffer(Ljava/lang/String;[B)V

    .line 901
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 902
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v0

    invoke-interface {v0, v5, v6, v7}, Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;->onAudioDataReceived(II[B)V

    goto/16 :goto_20

    .line 858
    :cond_ed
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v5

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->readSubTLVs(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B
    invoke-static {v0, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$300(Lcom/keephealth/android/twootablue/ota/OTAManager;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B

    move-result-object v0

    if-eqz v0, :cond_20

    .line 859
    array-length v5, v0

    if-ge v5, v8, :cond_fe

    goto/16 :goto_20

    .line 863
    :cond_fe
    aget-byte v5, v0, v10

    if-ne v5, v6, :cond_20

    .line 865
    invoke-static {v0, v9}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToInt([BI)I

    move-result v0

    const v5, 0x186a0

    if-eq v0, v5, :cond_20

    .line 867
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 868
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v5

    const-string v6, "Unknown error"

    invoke-interface {v5, v0, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_20

    .line 830
    :cond_120
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v6

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->readSubTLVs(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B
    invoke-static {v0, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$300(Lcom/keephealth/android/twootablue/ota/OTAManager;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B

    move-result-object v0

    if-eqz v0, :cond_20

    .line 831
    array-length v6, v0

    if-ge v6, v15, :cond_131

    goto/16 :goto_20

    .line 835
    :cond_131
    aget-byte v0, v0, v9

    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteToInt(B)I

    move-result v0

    .line 838
    iget-object v6, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->assembleCommand(IILjava/util/ArrayList;)[B
    invoke-static {v6, v5, v14, v12}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1900(Lcom/keephealth/android/twootablue/ota/OTAManager;IILjava/util/ArrayList;)[B

    move-result-object v5

    .line 840
    iget-object v6, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v6

    if-eqz v6, :cond_16b

    if-ne v0, v11, :cond_160

    .line 842
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;->onStatus(I)V

    .line 844
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$500(Lcom/keephealth/android/twootablue/ota/OTAManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->requestTimeOut:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$400(Lcom/keephealth/android/twootablue/ota/OTAManager;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_16b

    .line 846
    :cond_160
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v0

    const-string v6, "OTA package invalid, exit ota mode."

    invoke-interface {v0, v11, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;->onError(ILjava/lang/String;)V

    .line 850
    :cond_16b
    :goto_16b
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v0

    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->flush()V

    .line 851
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v0

    invoke-interface {v0, v5, v7}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->write([BI)V

    .line 852
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v0

    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->flush()V

    goto/16 :goto_20

    .line 812
    :cond_188
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v5

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->readSubTLVs(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B
    invoke-static {v0, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$300(Lcom/keephealth/android/twootablue/ota/OTAManager;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B

    move-result-object v0

    if-eqz v0, :cond_20

    .line 813
    array-length v5, v0

    const/16 v6, 0xe

    if-ge v5, v6, :cond_19b

    goto/16 :goto_20

    .line 818
    :cond_19b
    invoke-static {v0, v9}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToInt([BI)I

    const/16 v5, 0xa

    .line 823
    invoke-static {v0, v5}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToInt([BI)I

    goto/16 :goto_20

    .line 682
    :cond_1a5
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$900(Lcom/keephealth/android/twootablue/ota/OTAManager;)I

    move-result v0

    if-nez v0, :cond_1c4

    .line 683
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1000(Lcom/keephealth/android/twootablue/ota/OTAManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v13, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 684
    iget-object v6, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const-string v13, "OTAUnit"

    const/16 v12, 0x100

    invoke-interface {v0, v13, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I
    invoke-static {v6, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$902(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I

    .line 686
    :cond_1c4
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyStatus(I)V
    invoke-static {v0, v15}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$000(Lcom/keephealth/android/twootablue/ota/OTAManager;I)V

    .line 688
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v6

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->readSubTLVs(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B
    invoke-static {v0, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$300(Lcom/keephealth/android/twootablue/ota/OTAManager;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B

    move-result-object v0

    move v6, v10

    .line 689
    :goto_1d4
    array-length v12, v0

    if-ge v6, v12, :cond_1da

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d4

    :cond_1da
    if-eqz v0, :cond_20

    .line 691
    array-length v6, v0

    const/16 v12, 0xe

    if-ge v6, v12, :cond_1e3

    goto/16 :goto_20

    .line 695
    :cond_1e3
    iget-object v6, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mAckEnable:I
    invoke-static {v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1200(Lcom/keephealth/android/twootablue/ota/OTAManager;)I

    move-result v6

    const/16 v12, -0x80

    if-ne v6, v11, :cond_223

    .line 696
    array-length v6, v0

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 697
    aput-byte v5, v6, v10

    .line 698
    aput-byte v9, v6, v11

    const/4 v13, 0x2

    .line 699
    aput-byte v12, v6, v13

    .line 700
    array-length v13, v0

    int-to-byte v13, v13

    aput-byte v13, v6, v9

    .line 701
    array-length v13, v0

    const/16 v16, 0x8

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v6, v15

    .line 702
    array-length v13, v0

    invoke-static {v0, v10, v6, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    iget-object v13, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v13}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v13

    invoke-interface {v13}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->flush()V

    .line 705
    iget-object v13, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v13}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v13

    invoke-interface {v13, v6, v9}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->write([BI)V

    .line 706
    iget-object v6, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v6

    invoke-interface {v6}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->flush()V

    .line 712
    :cond_223
    invoke-static {v0, v9}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToInt([BI)I

    move-result v6

    const/16 v13, 0xa

    .line 717
    invoke-static {v0, v13}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToInt([BI)I

    move-result v8

    .line 721
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tlvs.length:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    array-length v13, v0

    const/16 v14, 0x11

    if-le v13, v14, :cond_20

    const/16 v13, 0xf

    .line 724
    invoke-static {v0, v13}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToShort([BI)I

    move-result v13

    .line 726
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "17 + len:"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v14, v13, 0x11

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    array-length v7, v0

    if-lt v7, v14, :cond_20

    .line 728
    new-array v7, v13, [B

    move v15, v10

    const/16 v14, 0x11

    :goto_26f
    if-ge v15, v13, :cond_27c

    add-int/lit8 v19, v14, 0x1

    .line 730
    aget-byte v14, v0, v14

    aput-byte v14, v7, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v19

    goto :goto_26f

    .line 732
    :cond_27c
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$900(Lcom/keephealth/android/twootablue/ota/OTAManager;)I

    move-result v0

    div-int v0, v8, v0

    add-int/2addr v0, v11

    .line 733
    iget-object v13, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->readFile(II[BI)Ljava/util/ArrayList;
    invoke-static {v13, v6, v8, v7, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1400(Lcom/keephealth/android/twootablue/ota/OTAManager;II[BI)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_294

    .line 735
    const-string v0, "frames == null"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 738
    :cond_294
    const-string v7, "frames == null222"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 739
    :goto_29a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_369

    .line 740
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    array-length v13, v13

    .line 743
    iget-object v14, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget-object v14, v14, Lcom/keephealth/android/twootablue/ota/OTAManager;->remoteCrcSupport:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_30e

    add-int/lit8 v14, v13, 0xa

    .line 747
    new-array v14, v14, [B

    .line 749
    aput-byte v5, v14, v10

    const/16 v15, 0xb

    .line 750
    aput-byte v15, v14, v11

    const/4 v15, 0x2

    .line 751
    aput-byte v12, v14, v15

    add-int/lit8 v15, v13, 0x5

    int-to-byte v12, v15

    .line 752
    aput-byte v12, v14, v9

    shr-int/lit8 v12, v15, 0x8

    int-to-byte v12, v12

    const/4 v15, 0x4

    .line 753
    aput-byte v12, v14, v15

    .line 754
    rem-int/lit16 v12, v7, 0x100

    int-to-byte v12, v12

    const/4 v15, 0x5

    aput-byte v12, v14, v15

    .line 756
    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    .line 757
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-virtual {v12, v15}, Ljava/util/zip/CRC32;->update([B)V

    .line 758
    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v11

    long-to-int v15, v11

    int-to-byte v15, v15

    const/16 v18, 0x6

    .line 759
    aput-byte v15, v14, v18

    const/16 v15, 0x8

    shr-long v9, v11, v15

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x7

    .line 760
    aput-byte v9, v14, v10

    const/16 v9, 0x10

    shr-long v9, v11, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 761
    aput-byte v9, v14, v15

    const/16 v9, 0x18

    shr-long v10, v11, v9

    long-to-int v9, v10

    int-to-byte v9, v9

    .line 762
    aput-byte v9, v14, v5

    .line 764
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-static {v9, v11, v14, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x6

    const/4 v11, 0x2

    const/4 v12, 0x5

    goto :goto_33c

    :cond_30e
    const/16 v10, 0xa

    add-int/lit8 v9, v13, 0x6

    .line 766
    new-array v14, v9, [B

    const/4 v9, 0x0

    .line 768
    aput-byte v5, v14, v9

    const/4 v9, 0x4

    const/4 v11, 0x1

    .line 769
    aput-byte v9, v14, v11

    const/16 v9, -0x80

    const/4 v11, 0x2

    .line 770
    aput-byte v9, v14, v11

    add-int/lit8 v12, v13, 0x1

    int-to-byte v5, v12

    const/16 v17, 0x3

    .line 771
    aput-byte v5, v14, v17

    shr-int/lit8 v5, v12, 0x8

    int-to-byte v5, v5

    const/4 v12, 0x4

    .line 772
    aput-byte v5, v14, v12

    .line 773
    rem-int/lit16 v5, v7, 0x100

    int-to-byte v5, v5

    const/4 v12, 0x5

    aput-byte v5, v14, v12

    .line 775
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static {v5, v10, v14, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    :goto_33c
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v5

    const/4 v10, 0x4

    invoke-interface {v5, v14, v10}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->write([BI)V

    .line 780
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v5

    invoke-interface {v5}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->flush()V

    .line 781
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    array-length v13, v14

    # += operator for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mWriteBytes:I
    invoke-static {v5, v13}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1512(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I

    .line 782
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mWriteBytes:I
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1500(Lcom/keephealth/android/twootablue/ota/OTAManager;)I

    move-result v13

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyWriteBytes(I)V
    invoke-static {v5, v13}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1600(Lcom/keephealth/android/twootablue/ota/OTAManager;I)V

    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x9

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, -0x80

    goto/16 :goto_29a

    .line 784
    :cond_369
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/keephealth/android/twootablue/ota/OTAManager;->updateOtaProgressBean:Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    .line 785
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    new-instance v5, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    invoke-direct {v5}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;-><init>()V

    iput-object v5, v0, Lcom/keephealth/android/twootablue/ota/OTAManager;->updateOtaProgressBean:Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    .line 786
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ota/OTAManager;->updateOtaProgressBean:Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    add-int/2addr v6, v8

    invoke-virtual {v0, v6}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->setProgress(I)V

    .line 787
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ota/OTAManager;->updateOtaProgressBean:Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1700(Lcom/keephealth/android/twootablue/ota/OTAManager;)Ljava/io/RandomAccessFile;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-virtual {v0, v5}, Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;->setTotal(I)V

    .line 788
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/keephealth/android/twootablue/ota/OTAManager;->message:Lcom/keephealth/android/model/bean/BaseMessage;

    .line 789
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    new-instance v5, Lcom/keephealth/android/model/bean/BaseMessage;

    iget-object v7, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget-object v7, v7, Lcom/keephealth/android/twootablue/ota/OTAManager;->updateOtaProgressBean:Lcom/keephealth/android/model/bean/UpdateOtaProgressBean;

    const/16 v8, 0x6a

    invoke-direct {v5, v8, v7}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(ILjava/lang/Object;)V

    iput-object v5, v0, Lcom/keephealth/android/twootablue/ota/OTAManager;->message:Lcom/keephealth/android/model/bean/BaseMessage;

    .line 790
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget-object v0, v0, Lcom/keephealth/android/twootablue/ota/OTAManager;->message:Lcom/keephealth/android/model/bean/BaseMessage;

    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 792
    const-string v0, "\u5b50\u7ebf\u7a0b\u4e2d\u4e0d\u80fd\u5237\u65b0UI"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b1
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_3b1} :catch_563

    .line 797
    :try_start_3b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset + length:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  mOTARandomAccessFile.length():"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1700(Lcom/keephealth/android/twootablue/ota/OTAManager;)Ljava/io/RandomAccessFile;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mOTARandomAccessFile:Ljava/io/RandomAccessFile;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1700(Lcom/keephealth/android/twootablue/ota/OTAManager;)Ljava/io/RandomAccessFile;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v5, v7

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyProgress(II)V
    invoke-static {v0, v6, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1800(Lcom/keephealth/android/twootablue/ota/OTAManager;II)V
    :try_end_3e9
    .catch Ljava/io/IOException; {:try_start_3b1 .. :try_end_3e9} :catch_3eb
    .catch Ljava/lang/Exception; {:try_start_3b1 .. :try_end_3e9} :catch_563

    goto/16 :goto_20

    :catch_3eb
    move-exception v0

    .line 800
    :try_start_3ec
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_20

    .line 634
    :cond_407
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v5

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->readSubTLVs(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B
    invoke-static {v0, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$300(Lcom/keephealth/android/twootablue/ota/OTAManager;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B

    move-result-object v0

    if-eqz v0, :cond_20

    .line 635
    array-length v5, v0

    const/16 v6, 0x18

    if-ge v5, v6, :cond_41a

    goto/16 :goto_20

    :cond_41a
    const/4 v5, 0x0

    .line 637
    :goto_41b
    array-length v6, v0

    if-ge v5, v6, :cond_421

    add-int/lit8 v5, v5, 0x1

    goto :goto_41b

    .line 642
    :cond_421
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v6, 0x3

    invoke-static {v0, v6}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToShort([BI)I

    move-result v6

    # setter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mWaitTimeout:I
    invoke-static {v5, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$702(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I

    .line 648
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/16 v6, 0x8

    invoke-static {v0, v6}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToShort([BI)I

    move-result v6

    # setter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mRestartTimeout:I
    invoke-static {v5, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$802(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I

    .line 654
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/16 v6, 0xd

    invoke-static {v0, v6}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToShort([BI)I

    move-result v6

    # setter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I
    invoke-static {v5, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$902(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I

    .line 655
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1000(Lcom/keephealth/android/twootablue/ota/OTAManager;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v13, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 656
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 657
    const-string v6, "OTAUnit"

    iget-object v7, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mOtaUnit:I
    invoke-static {v7}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$900(Lcom/keephealth/android/twootablue/ota/OTAManager;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 664
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/16 v6, 0x12

    invoke-static {v0, v6}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToShort([BI)I

    move-result v6

    # setter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mInterval:I
    invoke-static {v5, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1102(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I

    .line 669
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/16 v6, 0x17

    aget-byte v0, v0, v6

    invoke-static {v0}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteToInt(B)I

    move-result v0

    # setter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mAckEnable:I
    invoke-static {v5, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1202(Lcom/keephealth/android/twootablue/ota/OTAManager;I)I

    .line 673
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$500(Lcom/keephealth/android/twootablue/ota/OTAManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->requestTimeOut:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$400(Lcom/keephealth/android/twootablue/ota/OTAManager;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 674
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v5, 0x1

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyRemoteAppReady(I)V
    invoke-static {v0, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$1300(Lcom/keephealth/android/twootablue/ota/OTAManager;I)V

    goto/16 :goto_20

    .line 560
    :cond_48d
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v5

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->readSubTLVs(Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B
    invoke-static {v0, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$300(Lcom/keephealth/android/twootablue/ota/OTAManager;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)[B

    move-result-object v0

    if-eqz v0, :cond_20

    .line 561
    array-length v5, v0

    const/4 v7, 0x7

    if-ge v5, v7, :cond_49f

    goto/16 :goto_20

    :cond_49f
    const/4 v5, 0x0

    .line 565
    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_4a6

    goto/16 :goto_20

    :cond_4a6
    const/4 v5, 0x3

    .line 570
    invoke-static {v0, v5}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToInt([BI)I

    move-result v6

    .line 574
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$500(Lcom/keephealth/android/twootablue/ota/OTAManager;)Landroid/os/Handler;

    move-result-object v5

    iget-object v8, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->requestTimeOut:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$400(Lcom/keephealth/android/twootablue/ota/OTAManager;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 575
    new-instance v5, Lcom/keephealth/android/twootablue/ota/RemoteStatus;

    invoke-direct {v5}, Lcom/keephealth/android/twootablue/ota/RemoteStatus;-><init>()V

    move v8, v7

    .line 577
    :goto_4c0
    array-length v7, v0

    if-ge v8, v7, :cond_538

    add-int/lit8 v7, v8, 0x1

    .line 578
    aget-byte v9, v0, v8

    add-int/lit8 v10, v8, 0x2

    .line 579
    aget-byte v7, v0, v7

    .line 580
    aget-byte v10, v0, v10

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    add-int/2addr v7, v10

    add-int/lit8 v10, v8, 0x3

    packed-switch v9, :pswitch_data_57e

    const/4 v9, 0x0

    const/4 v12, 0x1

    :goto_4d8
    add-int/2addr v10, v7

    move v8, v10

    goto :goto_4c0

    :pswitch_4db
    add-int/lit8 v8, v8, 0x4

    .line 609
    aget-byte v7, v0, v10

    iput v7, v5, Lcom/keephealth/android/twootablue/ota/RemoteStatus;->featureSupport:I

    .line 610
    iget-object v7, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget v9, v5, Lcom/keephealth/android/twootablue/ota/RemoteStatus;->featureSupport:I

    const/4 v12, 0x1

    and-int/2addr v9, v12

    if-ne v9, v12, :cond_4ec

    move/from16 v20, v12

    goto :goto_4ee

    :cond_4ec
    const/16 v20, 0x0

    :goto_4ee
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v7, Lcom/keephealth/android/twootablue/ota/OTAManager;->remoteCrcSupport:Ljava/lang/Boolean;

    goto :goto_4fe

    :pswitch_4f5
    const/4 v12, 0x1

    .line 605
    invoke-static {v0, v10}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->byteArrayToInt([BI)I

    move-result v7

    iput v7, v5, Lcom/keephealth/android/twootablue/ota/RemoteStatus;->versionCode:I

    add-int/lit8 v8, v8, 0x7

    :goto_4fe
    const/4 v9, 0x0

    goto :goto_4c0

    :pswitch_500
    const/4 v12, 0x1

    .line 599
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 600
    invoke-static {v0, v10, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v5, Lcom/keephealth/android/twootablue/ota/RemoteStatus;->hardwareRev:Ljava/lang/String;

    goto :goto_51d

    :pswitch_50f
    const/4 v12, 0x1

    .line 593
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 594
    invoke-static {v0, v10, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v5, Lcom/keephealth/android/twootablue/ota/RemoteStatus;->boardName:Ljava/lang/String;

    :goto_51d
    add-int/2addr v10, v7

    move v8, v10

    goto :goto_4fe

    :pswitch_520
    const/4 v12, 0x1

    .line 587
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 588
    invoke-static {v0, v10, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v13, v5, Lcom/keephealth/android/twootablue/ota/RemoteStatus;->versionName:Ljava/lang/String;

    goto :goto_4d8

    :pswitch_52f
    const/4 v9, 0x0

    const/4 v12, 0x1

    add-int/lit8 v8, v8, 0x4

    .line 584
    aget-byte v7, v0, v10

    iput v7, v5, Lcom/keephealth/android/twootablue/ota/RemoteStatus;->batteryThreshold:I

    goto :goto_4c0

    :cond_538
    const v0, 0x186a0

    if-ne v6, v0, :cond_54e

    .line 621
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;->onRemoteStatusReceived(Lcom/keephealth/android/twootablue/ota/RemoteStatus;)V

    .line 622
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    const/4 v5, 0x3

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->notifyStatus(I)V
    invoke-static {v0, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$000(Lcom/keephealth/android/twootablue/ota/OTAManager;I)V

    goto/16 :goto_20

    .line 625
    :cond_54e
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 627
    iget-object v0, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mListener:Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;
    invoke-static {v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$600(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;

    move-result-object v0

    const-string v5, "Unknown error"

    invoke-interface {v0, v6, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;->onError(ILjava/lang/String;)V
    :try_end_561
    .catch Ljava/lang/Exception; {:try_start_3ec .. :try_end_561} :catch_563

    goto/16 :goto_20

    :catch_563
    move-exception v0

    .line 911
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "read_e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v5, v1, Lcom/keephealth/android/twootablue/ota/OTAManager$ProcessRunnable;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->handleException(Ljava/lang/Exception;)V
    invoke-static {v5, v0}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$2000(Lcom/keephealth/android/twootablue/ota/OTAManager;Ljava/lang/Exception;)V

    goto/16 :goto_20

    :cond_57d
    return-void

    :pswitch_data_57e
    .packed-switch 0x4
        :pswitch_52f
        :pswitch_520
        :pswitch_50f
        :pswitch_500
        :pswitch_4f5
        :pswitch_4db
    .end packed-switch
.end method
