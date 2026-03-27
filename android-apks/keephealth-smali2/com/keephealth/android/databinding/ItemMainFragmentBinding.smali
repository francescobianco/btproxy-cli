.class public final Lcom/keephealth/android/databinding/ItemMainFragmentBinding;
.super Ljava/lang/Object;
.source "ItemMainFragmentBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivMenu:Landroid/widget/ImageView;

.field public final lyMeau:Landroid/widget/LinearLayout;

.field public final rlItem:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvData0:Landroid/widget/TextView;

.field public final tvData1:Landroid/widget/TextView;

.field public final tvData2:Landroid/widget/TextView;

.field public final tvMenu:Landroid/widget/TextView;

.field public final tvUnit1:Landroid/widget/TextView;

.field public final tvUnit2:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 56
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->ivMenu:Landroid/widget/ImageView;

    .line 57
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->lyMeau:Landroid/widget/LinearLayout;

    .line 58
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->rlItem:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->tvData0:Landroid/widget/TextView;

    .line 60
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->tvData1:Landroid/widget/TextView;

    .line 61
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->tvData2:Landroid/widget/TextView;

    .line 62
    iput-object p8, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->tvMenu:Landroid/widget/TextView;

    .line 63
    iput-object p9, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->tvUnit1:Landroid/widget/TextView;

    .line 64
    iput-object p10, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->tvUnit2:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemMainFragmentBinding;
    .registers 14

    const v0, 0x7f0902b6

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_6b

    const v0, 0x7f0903d6

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6b

    .line 106
    move-object v6, p0

    check-cast v6, Landroid/widget/RelativeLayout;

    const v0, 0x7f09063c

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_6b

    const v0, 0x7f09063d

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_6b

    const v0, 0x7f09063e

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_6b

    const v0, 0x7f090684

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_6b

    const v0, 0x7f090705

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_6b

    const v0, 0x7f090706

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_6b

    .line 144
    new-instance p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v12}, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 147
    :cond_6b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 148
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemMainFragmentBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemMainFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemMainFragmentBinding;
    .registers 5

    const v0, 0x7f0c0123

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemMainFragmentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemMainFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
