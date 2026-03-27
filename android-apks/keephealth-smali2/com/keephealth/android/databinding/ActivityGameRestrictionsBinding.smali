.class public final Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;
.super Ljava/lang/Object;
.source "ActivityGameRestrictionsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ctSwitch:Lcom/keephealth/android/views/CustomToggleButton;

.field public final ctlEndTime:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ctlFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ctlStartTime:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ctlSwitch:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivNextEndTime:Landroid/widget/ImageView;

.field public final ivNextFrequency:Landroid/widget/ImageView;

.field public final ivNextStartTime:Landroid/widget/ImageView;

.field public final llGameTime:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvEndTime:Landroid/widget/TextView;

.field public final tvFrequency:Landroid/widget/TextView;

.field public final tvStartTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/CustomToggleButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 72
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    .line 73
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctlEndTime:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctlFrequency:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctlStartTime:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 76
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ctlSwitch:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ivNextEndTime:Landroid/widget/ImageView;

    .line 78
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ivNextFrequency:Landroid/widget/ImageView;

    .line 79
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->ivNextStartTime:Landroid/widget/ImageView;

    .line 80
    iput-object p10, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->llGameTime:Landroid/widget/LinearLayout;

    .line 81
    iput-object p11, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 82
    iput-object p12, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvEndTime:Landroid/widget/TextView;

    .line 83
    iput-object p13, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvFrequency:Landroid/widget/TextView;

    .line 84
    iput-object p14, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->tvStartTime:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;
    .registers 19

    move-object/from16 v0, p0

    const v1, 0x7f090105

    .line 115
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/keephealth/android/views/CustomToggleButton;

    if-eqz v5, :cond_ab

    const v1, 0x7f090108

    .line 121
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_ab

    const v1, 0x7f090109

    .line 127
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_ab

    const v1, 0x7f09010a

    .line 133
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_ab

    const v1, 0x7f09010b

    .line 139
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_ab

    const v1, 0x7f0902be

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_ab

    const v1, 0x7f0902e6

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_ab

    const v1, 0x7f0902bf

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_ab

    const v1, 0x7f090373

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_ab

    const v1, 0x7f0905f6

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_ab

    .line 173
    invoke-static {v2}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v14

    const v1, 0x7f09065e

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_ab

    const v1, 0x7f090664

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_ab

    const v1, 0x7f0906dc

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_ab

    .line 193
    new-instance v1, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;-><init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/CustomToggleButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 197
    :cond_ab
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;
    .registers 5

    const v0, 0x7f0c0056

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityGameRestrictionsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
