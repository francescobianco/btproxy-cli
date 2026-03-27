.class public Lcom/keephealth/android/util/log/BlockDetectByPrinter;
.super Ljava/lang/Object;
.source "BlockDetectByPrinter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start()V
    .registers 2

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/log/BlockDetectByPrinter$1;

    invoke-direct {v1}, Lcom/keephealth/android/util/log/BlockDetectByPrinter$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method
