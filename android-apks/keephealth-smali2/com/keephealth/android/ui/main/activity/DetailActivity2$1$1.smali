.class Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;
.super Ljava/lang/Object;
.source "DetailActivity2.java"

# interfaces
.implements Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;)V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 192
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I

    .line 194
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object v1, v1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->stepDetailVO:Lcom/keephealth/android/model/bean/StepDetailVO;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$100(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v1

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$200(Lcom/keephealth/android/ui/main/activity/DetailActivity2;Lcom/keephealth/android/model/bean/StepDetailVO;)V

    .line 195
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I

    goto :goto_a8

    .line 196
    :cond_3d
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10076a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 197
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I

    .line 199
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->stepDetailVO:Lcom/keephealth/android/model/bean/StepDetailVO;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$100(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$200(Lcom/keephealth/android/ui/main/activity/DetailActivity2;Lcom/keephealth/android/model/bean/StepDetailVO;)V

    goto :goto_a8

    .line 200
    :cond_73
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 201
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    const/4 v0, 0x2

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;->this$1:Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->stepDetailVO:Lcom/keephealth/android/model/bean/StepDetailVO;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$100(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)Lcom/keephealth/android/model/bean/StepDetailVO;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->updateMonth(Lcom/keephealth/android/model/bean/StepDetailVO;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$200(Lcom/keephealth/android/ui/main/activity/DetailActivity2;Lcom/keephealth/android/model/bean/StepDetailVO;)V

    :cond_a8
    :goto_a8
    return-void
.end method
