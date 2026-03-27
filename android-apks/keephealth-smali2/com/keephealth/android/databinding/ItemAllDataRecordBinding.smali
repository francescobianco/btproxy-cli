.class public final Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;
.super Ljava/lang/Object;
.source "ItemAllDataRecordBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutContent:Landroid/widget/LinearLayout;

.field public final layoutDelete:Landroid/widget/LinearLayout;

.field public final line:Landroid/view/View;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sample:Lcom/keephealth/android/views/SwipeDragLayout;

.field public final tvBloodTime:Landroid/widget/TextView;

.field public final tvBloodValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Lcom/keephealth/android/views/SwipeDragLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->rootView:Landroid/widget/LinearLayout;

    .line 46
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->layoutContent:Landroid/widget/LinearLayout;

    .line 47
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->layoutDelete:Landroid/widget/LinearLayout;

    .line 48
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->line:Landroid/view/View;

    .line 49
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->sample:Lcom/keephealth/android/views/SwipeDragLayout;

    .line 50
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->tvBloodTime:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->tvBloodValue:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;
    .registers 9

    .line 81
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    const v0, 0x7f090322

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_44

    const v0, 0x7f090340

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_44

    const v0, 0x7f09053c

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/keephealth/android/views/SwipeDragLayout;

    if-eqz v5, :cond_44

    const v0, 0x7f090626

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_44

    const v0, 0x7f090628

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_44

    .line 113
    new-instance p0, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Lcom/keephealth/android/views/SwipeDragLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 116
    :cond_44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;
    .registers 5

    const v0, 0x7f0c0113

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemAllDataRecordBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
