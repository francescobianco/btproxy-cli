.class Lcom/keephealth/android/util/telinkota/OtaController$3;
.super Ljava/lang/Object;
.source "OtaController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 664
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$3;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 667
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController$3;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->resetOta()V
    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/OtaController;->access$800(Lcom/keephealth/android/util/telinkota/OtaController;)V

    .line 668
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController$3;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    const/16 v1, 0x1c

    const-string v2, "OTA fail: firmware version request timeout(please check whether the notify property exists)"

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/telinkota/OtaController;->onOtaFailure(ILjava/lang/String;)V

    return-void
.end method
