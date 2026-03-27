.class Lcom/newland/springdialog/SpringDiaLog$1$1;
.super Ljava/lang/Object;
.source "SpringDiaLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newland/springdialog/SpringDiaLog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newland/springdialog/SpringDiaLog$1;


# direct methods
.method constructor <init>(Lcom/newland/springdialog/SpringDiaLog$1;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/newland/springdialog/SpringDiaLog$1$1;->this$1:Lcom/newland/springdialog/SpringDiaLog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog$1$1;->this$1:Lcom/newland/springdialog/SpringDiaLog$1;

    iget-object v0, v0, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/newland/springdialog/SpringDiaLog;->access$300(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/newland/springdialog/SpringDiaLog$1$1;->this$1:Lcom/newland/springdialog/SpringDiaLog$1;

    iget-object v1, v1, Lcom/newland/springdialog/SpringDiaLog$1;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/newland/springdialog/SpringDiaLog;->access$200(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
