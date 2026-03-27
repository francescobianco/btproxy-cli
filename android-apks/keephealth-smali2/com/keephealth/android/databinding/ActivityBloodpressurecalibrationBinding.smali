.class public final Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;
.super Ljava/lang/Object;
.source "ActivityBloodpressurecalibrationBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSave:Landroid/widget/Button;

.field public final etHeart:Landroid/widget/TextView;

.field public final etPressFz:Landroid/widget/TextView;

.field public final etPressSs:Landroid/widget/TextView;

.field public final ivTag1:Landroid/widget/ImageView;

.field public final ivTag2:Landroid/widget/ImageView;

.field public final ivTag3:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvHeart:Landroid/widget/TextView;

.field public final tvPressFz:Landroid/widget/TextView;

.field public final tvPressSs:Landroid/widget/TextView;

.field public final tvTips:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 63
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->btnSave:Landroid/widget/Button;

    .line 64
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->etHeart:Landroid/widget/TextView;

    .line 65
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->etPressFz:Landroid/widget/TextView;

    .line 66
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->etPressSs:Landroid/widget/TextView;

    .line 67
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->ivTag1:Landroid/widget/ImageView;

    .line 68
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->ivTag2:Landroid/widget/ImageView;

    .line 69
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->ivTag3:Landroid/widget/ImageView;

    .line 70
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->tvHeart:Landroid/widget/TextView;

    .line 71
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->tvPressFz:Landroid/widget/TextView;

    .line 72
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->tvPressSs:Landroid/widget/TextView;

    .line 73
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->tvTips:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;
    .registers 16

    const v0, 0x7f0900b0

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_8e

    const v0, 0x7f09016b

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_8e

    const v0, 0x7f09016d

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_8e

    const v0, 0x7f09016e

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_8e

    const v0, 0x7f0902d3

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_8e

    const v0, 0x7f0902d4

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_8e

    const v0, 0x7f0902d5

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_8e

    const v0, 0x7f09066a

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_8e

    const v0, 0x7f0906a2

    .line 152
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_8e

    const v0, 0x7f0906a3

    .line 158
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_8e

    const v0, 0x7f0906f6

    .line 164
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_8e

    .line 169
    new-instance v0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 173
    :cond_8e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;
    .registers 5

    const v0, 0x7f0c0025

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityBloodpressurecalibrationBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
