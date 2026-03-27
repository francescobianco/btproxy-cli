.class final Lcom/keephealth/android/util/telinkota/Peripheral$ConnectionTimeoutRunnable;
.super Ljava/lang/Object;
.source "Peripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/telinkota/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionTimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/telinkota/Peripheral;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V
    .registers 2

    .line 1094
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral$ConnectionTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V
    .registers 3

    .line 1094
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral$ConnectionTimeoutRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1098
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$ConnectionTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    invoke-virtual {v0}, Lcom/keephealth/android/util/telinkota/Peripheral;->disconnect()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1099
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral$ConnectionTimeoutRunnable;->this$0:Lcom/keephealth/android/util/telinkota/Peripheral;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->onDisconnect(I)V

    :cond_f
    return-void
.end method
