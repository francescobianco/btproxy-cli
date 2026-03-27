.class public final Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;
.super Ljava/lang/Object;
.source "ActivityPremenstrualBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnSend:Landroid/widget/Button;

.field public final llStartData:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvSelectCycle:Landroid/widget/TextView;

.field public final tvSelectPerimeter:Landroid/widget/TextView;

.field public final tvTips1:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final txtSelectDate:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 9

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->btnSend:Landroid/widget/Button;

    .line 51
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->llStartData:Landroid/widget/LinearLayout;

    .line 52
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->tvSelectCycle:Landroid/widget/TextView;

    .line 53
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->tvSelectPerimeter:Landroid/widget/TextView;

    .line 54
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->tvTips1:Landroid/widget/TextView;

    .line 55
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->tvTitle:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->txtSelectDate:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;
    .registers 12

    const v0, 0x7f0900b3

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_5e

    const v0, 0x7f0903a2

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_5e

    const v0, 0x7f0906b9

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_5e

    const v0, 0x7f0906ba

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5e

    const v0, 0x7f0906f7

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_5e

    const v0, 0x7f0906fc

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_5e

    const v0, 0x7f09079b

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_5e

    .line 128
    new-instance v0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 131
    :cond_5e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;
    .registers 5

    const v0, 0x7f0c0072

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityPremenstrualBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
