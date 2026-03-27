.class Lcom/newland/springdialog/SpringDiaLog$1;
.super Ljava/lang/Object;
.source "SpringDiaLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newland/springdialog/SpringDiaLog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newland/springdialog/SpringDiaLog;


# direct methods
.method constructor <init>(Lcom/newland/springdialog/SpringDiaLog;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 114
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->mCloseButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/newland/springdialog/SpringDiaLog;->access$000(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 115
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->mCloseButtonListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/newland/springdialog/SpringDiaLog;->access$000(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 117
    :cond_11
    iget-object p1, p0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->isUseAnimation:Z
    invoke-static {p1}, Lcom/newland/springdialog/SpringDiaLog;->access$100(Lcom/newland/springdialog/SpringDiaLog;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 118
    iget-object p1, p0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/newland/springdialog/SpringDiaLog;->access$300(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/newland/springdialog/SpringDiaLog;->access$200(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_57

    .line 120
    :cond_29
    iget-object p1, p0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->mAnimationView:Landroid/widget/RelativeLayout;
    invoke-static {p1}, Lcom/newland/springdialog/SpringDiaLog;->access$600(Lcom/newland/springdialog/SpringDiaLog;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/newland/springdialog/AnimSpring;->getInstance(Landroid/view/View;)Lcom/newland/springdialog/AnimSpring;

    move-result-object v0

    iget-object p1, p0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->widthX:D
    invoke-static {p1}, Lcom/newland/springdialog/SpringDiaLog;->access$400(Lcom/newland/springdialog/SpringDiaLog;)D

    move-result-wide v1

    neg-double v5, v1

    iget-object p1, p0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->heightY:D
    invoke-static {p1}, Lcom/newland/springdialog/SpringDiaLog;->access$500(Lcom/newland/springdialog/SpringDiaLog;)D

    move-result-wide v1

    neg-double v7, v1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/newland/springdialog/AnimSpring;->startTranslationAnim(DDDD)Lcom/newland/springdialog/AnimSpring;

    .line 121
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 122
    new-instance v0, Lcom/newland/springdialog/SpringDiaLog$1$1;

    invoke-direct {v0, p0}, Lcom/newland/springdialog/SpringDiaLog$1$1;-><init>(Lcom/newland/springdialog/SpringDiaLog$1;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_57
    return-void
.end method
