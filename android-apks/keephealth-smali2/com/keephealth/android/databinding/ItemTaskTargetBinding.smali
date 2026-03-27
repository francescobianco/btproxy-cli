.class public final Lcom/keephealth/android/databinding/ItemTaskTargetBinding;
.super Ljava/lang/Object;
.source "ItemTaskTargetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final description:Landroid/widget/TextView;

.field public final llTargetView:Landroid/widget/LinearLayout;

.field public final mSeekBar:Landroid/widget/SeekBar;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final titleName:Landroid/widget/TextView;

.field public final tvGold:Landroid/widget/TextView;

.field public final tvSuccessPercent:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->description:Landroid/widget/TextView;

    .line 46
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->llTargetView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->mSeekBar:Landroid/widget/SeekBar;

    .line 48
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->titleName:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->tvGold:Landroid/widget/TextView;

    .line 50
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->tvSuccessPercent:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemTaskTargetBinding;
    .registers 11

    const v0, 0x7f090129

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_47

    .line 86
    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    const v0, 0x7f0903e3

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/SeekBar;

    if-eqz v6, :cond_47

    const v0, 0x7f0905f4

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_47

    const v0, 0x7f090746

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_47

    const v0, 0x7f09077d

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_47

    .line 112
    new-instance p0, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 115
    :cond_47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemTaskTargetBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemTaskTargetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemTaskTargetBinding;
    .registers 5

    const v0, 0x7f0c013d

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemTaskTargetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemTaskTargetBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
