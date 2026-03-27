.class public Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "AddRewardNameActivity.java"


# instance fields
.field adapter:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

.field binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

.field bytes:[B

.field maxLengths:I

.field model:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameItemViewModel;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->type:I

    .line 37
    iput v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->maxLengths:I

    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->layoutTitle:Landroid/widget/RelativeLayout;

    const v1, 0x7f06005a

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$2;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$3;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$4;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    return-object v0
.end method

.method protected initView()V
    .registers 6

    .line 48
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 49
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameItemViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameItemViewModel;

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->model:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameItemViewModel;

    .line 50
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f1005cc

    invoke-virtual {p0, v1}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_ac

    .line 54
    const-string v2, "custom"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0083

    if-eqz v2, :cond_6d

    const v4, 0x7f1006f9

    .line 55
    invoke-virtual {p0, v4}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 56
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v3, 0x7f1006fb

    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iput v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->type:I

    goto :goto_86

    .line 60
    :cond_6d
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v3, 0x7f1005cd

    invoke-virtual {p0, v3}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_86
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 65
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_ac
    iget v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->type:I

    const v2, 0x7f0c0111

    if-ne v0, v1, :cond_c1

    .line 69
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->model:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameItemViewModel;

    invoke-virtual {v1, p0}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameItemViewModel;->setTaskName(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

    goto :goto_ce

    .line 71
    :cond_c1
    new-instance v0, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->model:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameItemViewModel;

    invoke-virtual {v1, p0}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameItemViewModel;->setRewardName(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

    .line 73
    :goto_ce
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->recyclerviewAddreward:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->recyclerviewAddreward:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->adapter:Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$1;-><init>(Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter;->setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_39

    .line 177
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 178
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 181
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 185
    :cond_39
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
