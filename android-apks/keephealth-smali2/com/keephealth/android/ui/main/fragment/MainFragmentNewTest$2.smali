.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;
.super Landroid/os/Handler;
.source "MainFragmentNewTest.java"


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

    .line 558
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 561
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 562
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "had_set"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->had_set:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$002(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg.what:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GGG32"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_86

    .line 565
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->had_set:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$000(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_80

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->had_set:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$000(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 567
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 568
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AppApplication.isLoginOut:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isLoginOut:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isLoginOut:Z

    const/4 v0, 0x1

    if-nez p1, :cond_75

    .line 572
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->yzmui(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;I)V

    goto :goto_86

    .line 576
    :cond_75
    const-string p1, "2222:"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->yzmui(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;I)V

    goto :goto_86

    .line 582
    :cond_80
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    const/4 v0, 0x2

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->yzmui(I)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->access$100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;I)V

    :cond_86
    :goto_86
    return-void
.end method
