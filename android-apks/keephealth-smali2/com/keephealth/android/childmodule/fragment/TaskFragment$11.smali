.class Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;
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

    .line 424
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 427
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskCustom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_38

    .line 428
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskCustom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivCustomShow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0d0006

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->viewHelpCustom:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_60

    .line 432
    :cond_38
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->rvTaskCustom:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->ivCustomShow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0003

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$11;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->binding:Lcom/keephealth/android/databinding/FragmentTaskViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentTaskViewBinding;->viewHelpCustom:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_60
    return-void
.end method
