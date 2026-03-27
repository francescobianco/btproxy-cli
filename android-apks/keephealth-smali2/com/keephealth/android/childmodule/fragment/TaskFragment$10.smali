.class Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/TaskFragment;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 413
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskTarget:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2e

    .line 414
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskTarget:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 415
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivTargetShow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4e

    .line 417
    :cond_2e
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskTarget:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivTargetShow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$10;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4e
    return-void
.end method
