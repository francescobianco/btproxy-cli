.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$5;
.super Ljava/lang/Object;
.source "MainFragmentNewTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V
    .registers 2

    .line 1230
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1233
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # operator++ for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$208(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I

    .line 1234
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutT:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$200(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1d

    .line 1235
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->timeoutRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    .line 1237
    :cond_1d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$5;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->bleTimeout(I)V

    :goto_23
    return-void
.end method
