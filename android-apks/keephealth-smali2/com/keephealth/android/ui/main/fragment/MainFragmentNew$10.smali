.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;
.super Landroid/os/Handler;
.source "MainFragmentNew.java"


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
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;Landroid/os/Looper;)V
    .registers 3

    .line 2763
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 2766
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2767
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_100

    .line 2768
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "had_set"

    const/16 v1, 0x8

    if-nez p1, :cond_50

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 2770
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_32

    .line 2771
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2773
    :cond_32
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3f

    .line 2774
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 2777
    :cond_3f
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isLoginOut:Z

    const/4 v2, 0x1

    if-nez p1, :cond_4a

    .line 2778
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->yzmui(I)V
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1200(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;I)V

    goto :goto_56

    .line 2783
    :cond_4a
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->yzmui(I)V
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1200(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;I)V

    goto :goto_56

    .line 2787
    :cond_50
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    const/4 v2, 0x2

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->yzmui(I)V
    invoke-static {p1, v2}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1200(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;I)V

    .line 2790
    :goto_56
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->token_home:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->token_home:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1300(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_100

    .line 2791
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ae

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ae

    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->had_set:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 2792
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_99

    .line 2793
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2795
    :cond_99
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_100

    .line 2796
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 2797
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_100

    .line 2800
    :cond_ae
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_bb

    .line 2801
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->rela_go_verify2:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2803
    :cond_bb
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->onClickboolClose1:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$1400(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Z

    move-result p1

    if-eqz p1, :cond_de

    .line 2805
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_d0

    .line 2806
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2808
    :cond_d0
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_100

    .line 2809
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_100

    .line 2813
    :cond_de
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_ec

    .line 2814
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->lin_keep_health1:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2816
    :cond_ec
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_100

    .line 2817
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 2818
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$10;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->viewFliper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->stopFlipping()V

    :cond_100
    :goto_100
    return-void
.end method
