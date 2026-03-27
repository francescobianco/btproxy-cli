.class Lcom/keephealth/android/twootablue/ota/OTAManager$3;
.super Ljava/lang/Object;
.source "OTAManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/twootablue/ota/OTAManager;->writeBuffer([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

.field final synthetic val$buffer:[B


# direct methods
.method constructor <init>(Lcom/keephealth/android/twootablue/ota/OTAManager;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 971
    iput-object p1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$3;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    iput-object p2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$3;->val$buffer:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 975
    const-string v0, "3423rew22"

    .line 0
    const-string v1, "mIO.write:"

    .line 975
    :try_start_4
    iget-object v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$3;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v2}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v2

    invoke-interface {v2}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->flush()V

    .line 976
    iget-object v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$3;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v2}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$3;->val$buffer:[B

    const/4 v4, 0x6

    invoke-interface {v2, v3, v4}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->write([BI)V

    .line 977
    iget-object v2, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$3;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # getter for: Lcom/keephealth/android/twootablue/ota/OTAManager;->mIO:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;
    invoke-static {v2}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$200(Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v2

    invoke-interface {v2}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;->flush()V

    .line 978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$3;->val$buffer:[B

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_39

    goto :goto_54

    :catch_39
    move-exception v1

    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mScheduledThreadPoolExecutor_e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/keephealth/android/twootablue/ota/OTAManager$3;->this$0:Lcom/keephealth/android/twootablue/ota/OTAManager;

    # invokes: Lcom/keephealth/android/twootablue/ota/OTAManager;->handleException(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/keephealth/android/twootablue/ota/OTAManager;->access$2000(Lcom/keephealth/android/twootablue/ota/OTAManager;Ljava/lang/Exception;)V

    .line 982
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_54
    return-void
.end method
