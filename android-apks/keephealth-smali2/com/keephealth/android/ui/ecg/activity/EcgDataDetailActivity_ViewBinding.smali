.class public Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EcgDataDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;)V
    .registers 3

    .line 23
    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;Landroid/view/View;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;

    .line 30
    const-string v0, "field \'mAllViews\'"

    const-class v1, Lcom/keephealth/android/views/ecg/MyEcgAllViews;

    const v2, 0x7f0903d7

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ecg/MyEcgAllViews;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->mAllViews:Lcom/keephealth/android/views/ecg/MyEcgAllViews;

    .line 31
    const-string v0, "field \'tvName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09068d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvName:Landroid/widget/TextView;

    .line 32
    const-string v0, "field \'tvSex\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906be

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvSex:Landroid/widget/TextView;

    .line 33
    const-string v0, "field \'tvBrithday\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09062f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvBrithday:Landroid/widget/TextView;

    .line 34
    const-string v0, "field \'tvHeight\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09066d

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvHeight:Landroid/widget/TextView;

    .line 35
    const-string v0, "field \'tvWeight\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090716

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvWeight:Landroid/widget/TextView;

    .line 36
    const-string v0, "field \'tvTips\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906f6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvTips:Landroid/widget/TextView;

    .line 37
    const-string v0, "field \'tvRecordData\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvRecordData:Landroid/widget/TextView;

    .line 38
    const-string v0, "field \'tvRecordTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906aa

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvRecordTime:Landroid/widget/TextView;

    .line 39
    const-string v0, "field \'tvAvgHr\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvAvgHr:Landroid/widget/TextView;

    .line 40
    const-string v0, "field \'layoutContent\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0902ff

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->layoutContent:Landroid/widget/RelativeLayout;

    .line 41
    const-string v0, "field \'ecgGrid\'"

    const-class v1, Lcom/keephealth/android/views/ecg/EcgGrid;

    const v2, 0x7f09015b

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ecg/EcgGrid;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->ecgGrid:Lcom/keephealth/android/views/ecg/EcgGrid;

    .line 42
    const-string v0, "field \'mNestedScrollView\'"

    const-class v1, Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0903da

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p1, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;

    .line 52
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->mAllViews:Lcom/keephealth/android/views/ecg/MyEcgAllViews;

    .line 53
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvName:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvSex:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvBrithday:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvHeight:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvWeight:Landroid/widget/TextView;

    .line 58
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvTips:Landroid/widget/TextView;

    .line 59
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvRecordData:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvRecordTime:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->tvAvgHr:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->layoutContent:Landroid/widget/RelativeLayout;

    .line 63
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->ecgGrid:Lcom/keephealth/android/views/ecg/EcgGrid;

    .line 64
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgDataDetailActivity;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    return-void

    .line 49
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
