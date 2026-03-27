.class public Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;
.super Ljava/lang/Object;
.source "MainFragmentNewTest_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

.field private view7f0900a3:Landroid/view/View;

.field private view7f090227:Landroid/view/View;

.field private view7f09032d:Landroid/view/View;

.field private view7f09072a:Landroid/view/View;

.field private view7f090740:Landroid/view/View;

.field private view7f090741:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;Landroid/view/View;)V
    .registers 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    .line 41
    const-string v0, "field \'barBgTitle\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090081

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->barBgTitle:Landroid/widget/RelativeLayout;

    .line 42
    const-string v0, "field \'mRefreshLayout\'"

    const-class v1, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    const v2, 0x7f0904a6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    .line 43
    const-string v0, "field \'mRecyclerViewShow\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903df

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    const-string v0, "field \'btnEdit\' and method \'editMainMenu\'"

    const v1, 0x7f0900a3

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    const-string v2, "field \'btnEdit\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f0900a3:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const-string v0, "field \'mRecyclerViewHide\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903de

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    const-string v0, "field \'hideLayout\'"

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0901b2

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideLayout:Landroid/widget/LinearLayout;

    .line 55
    const-string v0, "field \'lin_add_device\' and method \'linAddDevice\'"

    const v1, 0x7f09032d

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 56
    const-string v2, "field \'lin_add_device\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_add_device:Landroid/widget/LinearLayout;

    .line 57
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f09032d:Landroid/view/View;

    .line 58
    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const-string v0, "field \'img_add_device\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09021f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->img_add_device:Landroid/widget/ImageView;

    .line 65
    const-string v0, "field \'tv_deviceName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090733

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_deviceName:Landroid/widget/TextView;

    .line 66
    const-string v0, "field \'lin_keep_health1\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090339

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    .line 67
    const-string v0, "field \'tv_go_yanz2\' and method \'tv_go_yanz\'"

    const v1, 0x7f090741

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 68
    const-string v2, "field \'tv_go_yanz2\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_go_yanz2:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f090741:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const-string v0, "field \'rela_go_verify2\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0904b3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    .line 77
    const-string v0, "field \'viewFliper\'"

    const-class v1, Landroid/widget/ViewFlipper;

    const v2, 0x7f0907b8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    const v0, 0x7f09072a

    .line 78
    const-string v1, "method \'tvClose\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f09072a:Landroid/view/View;

    .line 80
    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090227

    .line 86
    const-string v1, "method \'img_close2\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f090227:Landroid/view/View;

    .line 88
    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090740

    .line 94
    const-string v1, "method \'tvGoset\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 95
    iput-object p2, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f090740:Landroid/view/View;

    .line 96
    new-instance v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    if-eqz v0, :cond_4c

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->target:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    .line 111
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->barBgTitle:Landroid/widget/RelativeLayout;

    .line 112
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRefreshLayout:Lcn/bingoogolapple/refreshlayout/BGARefreshLayout;

    .line 113
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewShow:Landroidx/recyclerview/widget/RecyclerView;

    .line 114
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->btnEdit:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->mRecyclerViewHide:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->hideLayout:Landroid/widget/LinearLayout;

    .line 117
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_add_device:Landroid/widget/LinearLayout;

    .line 118
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->img_add_device:Landroid/widget/ImageView;

    .line 119
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_deviceName:Landroid/widget/TextView;

    .line 120
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->lin_keep_health1:Landroid/widget/RelativeLayout;

    .line 121
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->tv_go_yanz2:Landroid/widget/TextView;

    .line 122
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->rela_go_verify2:Landroid/widget/RelativeLayout;

    .line 123
    iput-object v1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->viewFliper:Landroid/widget/ViewFlipper;

    .line 125
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f0900a3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f0900a3:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f09032d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f09032d:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f090741:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f090741:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f09072a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f09072a:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f090227:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f090227:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f090740:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object v1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest_ViewBinding;->view7f090740:Landroid/view/View;

    return-void

    .line 108
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
