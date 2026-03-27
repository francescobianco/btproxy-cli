.class Lcom/keephealth/android/util/StatusBarUtil$2;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/StatusBarUtil;->addStatusHeight(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isAddPaddingTop:Z

.field final synthetic val$viewGroup:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 741
    iput-object p1, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$viewGroup:Landroid/view/View;

    iput-boolean p2, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$isAddPaddingTop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 744
    iget-object v0, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$viewGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 745
    invoke-static {}, Lcom/keephealth/android/app/LibContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$viewGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 746
    iget-boolean v1, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$isAddPaddingTop:Z

    if-eqz v1, :cond_41

    .line 747
    iget-object v1, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$viewGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 748
    iget-object v2, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$viewGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 749
    iget-object v3, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$viewGroup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-static {}, Lcom/keephealth/android/app/LibContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    .line 750
    iget-object v4, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$viewGroup:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 751
    iget-object v5, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$viewGroup:Landroid/view/View;

    invoke-virtual {v5, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 753
    :cond_41
    iget-object v1, p0, Lcom/keephealth/android/util/StatusBarUtil$2;->val$viewGroup:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
