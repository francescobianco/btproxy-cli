.class public Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;
.super Ljava/lang/Object;
.source "EcgMeasureFinishActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

.field private view7f0905f8:Landroid/view/View;

.field private view7f0906bf:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)V
    .registers 3

    .line 28
    invoke-virtual {p1}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;Landroid/view/View;)V
    .registers 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    .line 36
    const-string v0, "field \'ecgScrollView\'"

    const-class v1, Lcom/keephealth/android/views/ecg/MyEcgScrollView;

    const v2, 0x7f09015c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ecg/MyEcgScrollView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgScrollView:Lcom/keephealth/android/views/ecg/MyEcgScrollView;

    .line 37
    const-string v0, "field \'mSeekBar\'"

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f0903e3

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 38
    const-string v0, "field \'tvStateTitle\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906e1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvStateTitle:Landroid/widget/TextView;

    .line 39
    const-string v0, "field \'layoutDesc\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090302

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->layoutDesc:Landroid/widget/RelativeLayout;

    .line 40
    const-string v0, "field \'tvDesc\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09064f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvDesc:Landroid/widget/TextView;

    .line 41
    const-string v0, "field \'tvAvgHr\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09061f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvAvgHr:Landroid/widget/TextView;

    .line 42
    const-string v0, "field \'tvCheckTime\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090633

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvCheckTime:Landroid/widget/TextView;

    .line 43
    const-string v0, "field \'tvZengyi\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09071c

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvZengyi:Landroid/widget/TextView;

    .line 44
    const-string v0, "field \'tvSpeed\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906d4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvSpeed:Landroid/widget/TextView;

    .line 45
    const-string v0, "field \'mNestedScrollView\'"

    const-class v1, Landroidx/core/widget/NestedScrollView;

    const v2, 0x7f0903da

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f0905f8

    .line 46
    const-string v1, "method \'toWebview\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;->view7f0905f8:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0906bf

    .line 54
    const-string v1, "method \'toShare\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;->view7f0906bf:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    if-eqz v0, :cond_2a

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;->target:Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;

    .line 71
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->ecgScrollView:Lcom/keephealth/android/views/ecg/MyEcgScrollView;

    .line 72
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 73
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvStateTitle:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->layoutDesc:Landroid/widget/RelativeLayout;

    .line 75
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvDesc:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvAvgHr:Landroid/widget/TextView;

    .line 77
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvCheckTime:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvZengyi:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->tvSpeed:Landroid/widget/TextView;

    .line 80
    iput-object v1, v0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;->view7f0905f8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;->view7f0905f8:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;->view7f0906bf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgMeasureFinishActivity_ViewBinding;->view7f0906bf:Landroid/view/View;

    return-void

    .line 68
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
