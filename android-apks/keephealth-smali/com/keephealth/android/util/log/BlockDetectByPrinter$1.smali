.class Lcom/keephealth/android/util/log/BlockDetectByPrinter$1;
.super Ljava/lang/Object;
.source "BlockDetectByPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/log/BlockDetectByPrinter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final END:Ljava/lang/String; = "<<<<< Finished"

.field private static final START:Ljava/lang/String; = ">>>>> Dispatching"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 3

    .line 17
    const-string v0, ">>>>> Dispatching"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 18
    invoke-static {}, Lcom/keephealth/android/util/log/LogMonitor;->getInstance()Lcom/keephealth/android/util/log/LogMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/log/LogMonitor;->startMonitor()V

    .line 20
    :cond_f
    const-string v0, "<<<<< Finished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 21
    invoke-static {}, Lcom/keephealth/android/util/log/LogMonitor;->getInstance()Lcom/keephealth/android/util/log/LogMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/log/LogMonitor;->removeMonitor()V

    :cond_1e
    return-void
.end method
