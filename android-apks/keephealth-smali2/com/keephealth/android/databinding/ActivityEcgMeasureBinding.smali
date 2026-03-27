.class public final Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;
.super Ljava/lang/Object;
.source "ActivityEcgMeasureBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnRestart:Landroid/widget/Button;

.field public final ecgMeasureGrid:Lcom/keephealth/android/views/ecg/EcgGrid;

.field public final ecgMeasureHeartView:Lcom/keephealth/android/views/ecg/EcgView;

.field public final ivEcgRate:Landroid/widget/ImageView;

.field public final layoutChart:Landroid/widget/RelativeLayout;

.field public final layoutFaild:Landroid/widget/LinearLayout;

.field public final layoutMeasureing:Landroid/widget/LinearLayout;

.field public final layoutStart:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final timeCount:Landroid/widget/TextView;

.field public final tvAvgHr:Landroid/widget/TextView;

.field public final tvFinishTips:Landroid/widget/TextView;

.field public final tvTimerTips:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/keephealth/android/views/ecg/EcgGrid;Lcom/keephealth/android/views/ecg/EcgView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 14

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->btnRestart:Landroid/widget/Button;

    .line 71
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->ecgMeasureGrid:Lcom/keephealth/android/views/ecg/EcgGrid;

    .line 72
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->ecgMeasureHeartView:Lcom/keephealth/android/views/ecg/EcgView;

    .line 73
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->ivEcgRate:Landroid/widget/ImageView;

    .line 74
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->layoutChart:Landroid/widget/RelativeLayout;

    .line 75
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->layoutFaild:Landroid/widget/LinearLayout;

    .line 76
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->layoutMeasureing:Landroid/widget/LinearLayout;

    .line 77
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->layoutStart:Landroid/widget/LinearLayout;

    .line 78
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->timeCount:Landroid/widget/TextView;

    .line 79
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->tvAvgHr:Landroid/widget/TextView;

    .line 80
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->tvFinishTips:Landroid/widget/TextView;

    .line 81
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->tvTimerTips:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;
    .registers 18

    move-object/from16 v0, p0

    const v1, 0x7f0900af

    .line 112
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_9d

    const v1, 0x7f09015b

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/keephealth/android/views/ecg/EcgGrid;

    if-eqz v6, :cond_9d

    const v1, 0x7f09015c

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/keephealth/android/views/ecg/EcgView;

    if-eqz v7, :cond_9d

    const v1, 0x7f0902ac

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_9d

    const v1, 0x7f0902fe

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_9d

    const v1, 0x7f090305

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_9d

    const v1, 0x7f090314

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_9d

    const v1, 0x7f09031d

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_9d

    const v1, 0x7f0905ea

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_9d

    const v1, 0x7f09061f

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_9d

    const v1, 0x7f090662

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_9d

    const v1, 0x7f0906f4

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_9d

    .line 183
    new-instance v1, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/keephealth/android/views/ecg/EcgGrid;Lcom/keephealth/android/views/ecg/EcgView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 187
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;
    .registers 5

    const v0, 0x7f0c004e

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityEcgMeasureBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
