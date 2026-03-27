.class public final Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;
.super Ljava/lang/Object;
.source "ActivityPremenstrualNewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSend:Landroid/widget/Button;

.field public final llStartData:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

.field public final tvSelectCycle:Landroid/widget/TextView;

.field public final tvSelectPerimeter:Landroid/widget/TextView;

.field public final tvTips1:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final txtSelectDate:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 10

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 53
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->btnSend:Landroid/widget/Button;

    .line 54
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->llStartData:Landroid/widget/LinearLayout;

    .line 55
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    .line 56
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvSelectCycle:Landroid/widget/TextView;

    .line 57
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvSelectPerimeter:Landroid/widget/TextView;

    .line 58
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvTips1:Landroid/widget/TextView;

    .line 59
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->tvTitle:Landroid/widget/TextView;

    .line 60
    iput-object p9, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->txtSelectDate:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;
    .registers 13

    const v0, 0x7f0900b3

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_6b

    const v0, 0x7f0903a2

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6b

    const v0, 0x7f0905f6

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 107
    invoke-static {v1}, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    move-result-object v6

    const v0, 0x7f0906b9

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_6b

    const v0, 0x7f0906ba

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_6b

    const v0, 0x7f0906f7

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_6b

    const v0, 0x7f0906fc

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_6b

    const v0, 0x7f09079b

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_6b

    .line 139
    new-instance v0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 142
    :cond_6b
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;
    .registers 5

    const v0, 0x7f0c0073

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualNewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
