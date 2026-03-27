.class Lcom/keephealth/android/util/telinkota/OtaController$2;
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

    .line 656
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaController$2;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 659
    const-string v0, "start send firmware"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaController$2;->this$0:Lcom/keephealth/android/util/telinkota/OtaController;

    # invokes: Lcom/keephealth/android/util/telinkota/OtaController;->sendNextOtaPacketCommand()V
    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/OtaController;->access$300(Lcom/keephealth/android/util/telinkota/OtaController;)V

    return-void
.end method
