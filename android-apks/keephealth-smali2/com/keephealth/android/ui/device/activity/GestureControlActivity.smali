.class public Lcom/keephealth/android/ui/device/activity/GestureControlActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "GestureControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityGestureControlBinding;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

.field gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    return-void
.end method

.method private initData(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/GestureControlBean;",
            ">;)V"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;

    const v1, 0x7f100691

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100616

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;

    const v1, 0x7f1006e5

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100618

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/keephealth/android/ui/device/bean/GestureControlBean;

    const v1, 0x7f10061e

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100617

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget v0, Lcom/keephealth/android/app/AppApplication;->gestureType:I

    if-eqz v0, :cond_55

    .line 99
    sget v0, Lcom/keephealth/android/app/AppApplication;->gestureType:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/device/bean/GestureControlBean;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/device/bean/GestureControlBean;->setShow(Z)V

    goto :goto_5c

    .line 101
    :cond_55
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->ivChoseClose:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5c
    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 1

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityGestureControlBinding;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    return-object v0
.end method

.method protected initView()V
    .registers 4

    .line 40
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 41
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->toBack()V

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bgView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v1, 0x7f100637

    invoke-virtual {p0, v1}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->initData(Ljava/util/List;)V

    .line 49
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    new-instance v1, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    const v2, 0x7f0c0120

    invoke-direct {v1, v2, v0}, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 54
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->gestureControlAdapter:Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/GestureControlActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/GestureControlAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GestureControlActivity;->binding:Lcom/keephealth/android/databinding/ActivityGestureControlBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityGestureControlBinding;->rlClose:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/GestureControlActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/GestureControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
