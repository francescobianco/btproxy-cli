.class Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;
.super Ljava/lang/Object;
.source "DetailActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailActivity2;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const p1, 0x7f0901c8

    const-wide/16 v0, 0x3e8

    .line 176
    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(IJ)Z

    move-result p1

    if-nez p1, :cond_65

    .line 177
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)I

    move-result p1

    if-nez p1, :cond_20

    .line 178
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    sget-object v0, Lcom/keephealth/android/model/bean/DetailType;->STEP:Lcom/keephealth/android/model/bean/DetailType;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 179
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I

    goto :goto_49

    .line 180
    :cond_20
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    .line 181
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailType;->CAL:Lcom/keephealth/android/model/bean/DetailType;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 182
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I

    goto :goto_49

    .line 183
    :cond_35
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # getter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$000(Lcom/keephealth/android/ui/main/activity/DetailActivity2;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_49

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    # setter for: Lcom/keephealth/android/ui/main/activity/DetailActivity2;->titleType:I
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->access$002(Lcom/keephealth/android/ui/main/activity/DetailActivity2;I)I

    .line 187
    :cond_49
    :goto_49
    new-instance p1, Lcom/keephealth/android/views/dialog/StepDistanceDialog;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;->this$0:Lcom/keephealth/android/ui/main/activity/DetailActivity2;

    iget-object v1, v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2;->tv_titleNname:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/DetailActivity2$1$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailActivity2$1;)V

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->setOnSelectClick(Lcom/keephealth/android/views/dialog/StepDistanceDialog$OnSelectClick;)V

    .line 207
    invoke-virtual {p1}, Lcom/keephealth/android/views/dialog/StepDistanceDialog;->show()V

    :cond_65
    return-void
.end method
