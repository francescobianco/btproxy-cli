.class public final Lcom/keephealth/android/databinding/LayoutSelectDataBinding;
.super Ljava/lang/Object;
.source "LayoutSelectDataBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivNextDate:Landroid/widget/ImageView;

.field public final ivPreDate:Landroid/widget/ImageView;

.field public final ivSelectedDate:Landroid/widget/ImageView;

.field public final rbDay:Landroid/widget/RadioButton;

.field public final rbOneMonth:Landroid/widget/RadioButton;

.field public final rbSixMonth:Landroid/widget/RadioButton;

.field public final rbYear:Landroid/widget/RadioButton;

.field public final rgDate:Landroid/widget/RadioGroup;

.field private final rootView:Lcom/keephealth/android/views/SelectDateLinearLayout;

.field public final tvDate:Landroid/widget/TextView;

.field public final tvDay:Landroid/widget/TextView;

.field public final tvMonth:Landroid/widget/TextView;

.field public final tvWeek:Landroid/widget/TextView;

.field public final tvYear:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/views/SelectDateLinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->rootView:Lcom/keephealth/android/views/SelectDateLinearLayout;

    .line 71
    iput-object p2, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->ivNextDate:Landroid/widget/ImageView;

    .line 72
    iput-object p3, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->ivPreDate:Landroid/widget/ImageView;

    .line 73
    iput-object p4, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->ivSelectedDate:Landroid/widget/ImageView;

    .line 74
    iput-object p5, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->rbDay:Landroid/widget/RadioButton;

    .line 75
    iput-object p6, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->rbOneMonth:Landroid/widget/RadioButton;

    .line 76
    iput-object p7, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->rbSixMonth:Landroid/widget/RadioButton;

    .line 77
    iput-object p8, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->rbYear:Landroid/widget/RadioButton;

    .line 78
    iput-object p9, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->rgDate:Landroid/widget/RadioGroup;

    .line 79
    iput-object p10, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->tvDate:Landroid/widget/TextView;

    .line 80
    iput-object p11, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->tvDay:Landroid/widget/TextView;

    .line 81
    iput-object p12, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->tvMonth:Landroid/widget/TextView;

    .line 82
    iput-object p13, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->tvWeek:Landroid/widget/TextView;

    .line 83
    iput-object p14, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->tvYear:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutSelectDataBinding;
    .registers 19

    move-object/from16 v0, p0

    const v1, 0x7f0902bd

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_aa

    const v1, 0x7f0902c5

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_aa

    const v1, 0x7f0902cd

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_aa

    const v1, 0x7f090484

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_aa

    const v1, 0x7f090485

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RadioButton;

    if-eqz v9, :cond_aa

    const v1, 0x7f090486

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RadioButton;

    if-eqz v10, :cond_aa

    const v1, 0x7f090487

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RadioButton;

    if-eqz v11, :cond_aa

    const v1, 0x7f0904ce

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RadioGroup;

    if-eqz v12, :cond_aa

    const v1, 0x7f090640

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_aa

    const v1, 0x7f090648

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_aa

    const v1, 0x7f09068a

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_aa

    const v1, 0x7f090715

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_aa

    const v1, 0x7f09071b

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_aa

    .line 191
    new-instance v1, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;

    move-object v4, v0

    check-cast v4, Lcom/keephealth/android/views/SelectDateLinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;-><init>(Lcom/keephealth/android/views/SelectDateLinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 195
    :cond_aa
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/LayoutSelectDataBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutSelectDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutSelectDataBinding;
    .registers 5

    const v0, 0x7f0c014b

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 102
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutSelectDataBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->getRoot()Lcom/keephealth/android/views/SelectDateLinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/keephealth/android/views/SelectDateLinearLayout;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/databinding/LayoutSelectDataBinding;->rootView:Lcom/keephealth/android/views/SelectDateLinearLayout;

    return-object v0
.end method
