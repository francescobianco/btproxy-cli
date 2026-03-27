.class Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/activity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    # operator++ for: Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->access$008(Lcom/keephealth/android/ui/main/activity/RegisterActivity;)I

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->access$000(Lcom/keephealth/android/ui/main/activity/RegisterActivity;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_61

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterActivity;->isRunTime:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->access$102(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Z)Z

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->tvSmsCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10073f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I
    invoke-static {v3}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->access$000(Lcom/keephealth/android/ui/main/activity/RegisterActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->tvSmsCode:Landroid/widget/TextView;

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->timeRun:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    # invokes: Lcom/keephealth/android/ui/main/activity/RegisterActivity;->postHandler(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->access$200(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Ljava/lang/Runnable;J)V

    goto :goto_98

    .line 172
    :cond_61
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    const/4 v2, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterActivity;->longTime:I
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->access$002(Lcom/keephealth/android/ui/main/activity/RegisterActivity;I)I

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    # setter for: Lcom/keephealth/android/ui/main/activity/RegisterActivity;->isRunTime:Z
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->access$102(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Z)Z

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->tvSmsCode:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->tvSmsCode:Landroid/widget/TextView;

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->tvSmsCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100533

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_98
    return-void
.end method
