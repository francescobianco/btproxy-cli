.class Lcom/newland/springdialog/SpringDiaLog$3;
.super Ljava/lang/Object;
.source "SpringDiaLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newland/springdialog/SpringDiaLog;->close()V
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

    .line 198
    iput-object p1, p0, Lcom/newland/springdialog/SpringDiaLog$3;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/newland/springdialog/SpringDiaLog$3;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->androidContentView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/newland/springdialog/SpringDiaLog;->access$300(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/newland/springdialog/SpringDiaLog$3;->this$0:Lcom/newland/springdialog/SpringDiaLog;

    # getter for: Lcom/newland/springdialog/SpringDiaLog;->mRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/newland/springdialog/SpringDiaLog;->access$200(Lcom/newland/springdialog/SpringDiaLog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
