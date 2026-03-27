.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;
.super Ljava/lang/Object;
.source "LoginNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

.field final synthetic val$img_choose:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Landroid/widget/ImageView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;->val$img_choose:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 292
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyiLogin:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$100(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 293
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyiLogin:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$102(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Z)Z

    .line 294
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;->val$img_choose:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v1, 0x7f0d0337

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_31

    .line 296
    :cond_1d
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyiLogin:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$102(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Z)Z

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;->val$img_choose:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const v1, 0x7f0d0332

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_31
    return-void
.end method
