.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$7;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 2

    .line 2400
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$7;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2403
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$7;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # operator++ for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$808(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I

    .line 2404
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$7;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutT:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$800(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)I

    move-result v0

    const/16 v1, 0x12

    if-gt v0, v1, :cond_1c

    .line 2405
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$7;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$7;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->timeoutRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1c
    return-void
.end method
