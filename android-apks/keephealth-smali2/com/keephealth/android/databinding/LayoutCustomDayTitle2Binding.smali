.class public final Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;
.super Ljava/lang/Object;
.source "LayoutCustomDayTitle2Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivNextDate:Landroid/widget/ImageView;

.field public final ivPreDate:Landroid/widget/ImageView;

.field public final rbDay:Landroid/widget/RadioButton;

.field public final rbOneMonth:Landroid/widget/RadioButton;

.field public final rbSixMonth:Landroid/widget/RadioButton;

.field public final rbYear:Landroid/widget/RadioButton;

.field public final rgDate:Landroid/widget/RadioGroup;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvDate:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/TextView;)V
    .registers 10

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->rootView:Landroid/widget/LinearLayout;

    .line 54
    iput-object p2, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->ivNextDate:Landroid/widget/ImageView;

    .line 55
    iput-object p3, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->ivPreDate:Landroid/widget/ImageView;

    .line 56
    iput-object p4, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->rbDay:Landroid/widget/RadioButton;

    .line 57
    iput-object p5, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->rbOneMonth:Landroid/widget/RadioButton;

    .line 58
    iput-object p6, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->rbSixMonth:Landroid/widget/RadioButton;

    .line 59
    iput-object p7, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->rbYear:Landroid/widget/RadioButton;

    .line 60
    iput-object p8, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->rgDate:Landroid/widget/RadioGroup;

    .line 61
    iput-object p9, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->tvDate:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;
    .registers 13

    const v0, 0x7f0902bd

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_6a

    const v0, 0x7f0902c5

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_6a

    const v0, 0x7f090484

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RadioButton;

    if-eqz v6, :cond_6a

    const v0, 0x7f090485

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RadioButton;

    if-eqz v7, :cond_6a

    const v0, 0x7f090486

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RadioButton;

    if-eqz v8, :cond_6a

    const v0, 0x7f090487

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RadioButton;

    if-eqz v9, :cond_6a

    const v0, 0x7f0904ce

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RadioGroup;

    if-eqz v10, :cond_6a

    const v0, 0x7f090640

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_6a

    .line 139
    new-instance v0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/TextView;)V

    return-object v0

    .line 142
    :cond_6a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;
    .registers 5

    const v0, 0x7f0c0145

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/databinding/LayoutCustomDayTitle2Binding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
