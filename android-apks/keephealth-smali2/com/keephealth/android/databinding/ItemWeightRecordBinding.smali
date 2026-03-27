.class public final Lcom/keephealth/android/databinding/ItemWeightRecordBinding;
.super Ljava/lang/Object;
.source "ItemWeightRecordBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutContent:Landroid/widget/LinearLayout;

.field public final layoutDelete:Landroid/widget/LinearLayout;

.field public final line:Landroid/view/View;

.field public final line2:Landroid/view/View;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final sample:Lcom/keephealth/android/views/SwipeDragLayout;

.field public final trash:Landroid/widget/ImageView;

.field public final tvWeightTime:Landroid/widget/TextView;

.field public final weightTotal:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Lcom/keephealth/android/views/SwipeDragLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 10

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->rootView:Landroid/widget/LinearLayout;

    .line 53
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->layoutContent:Landroid/widget/LinearLayout;

    .line 54
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->layoutDelete:Landroid/widget/LinearLayout;

    .line 55
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->line:Landroid/view/View;

    .line 56
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->line2:Landroid/view/View;

    .line 57
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->sample:Lcom/keephealth/android/views/SwipeDragLayout;

    .line 58
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->trash:Landroid/widget/ImageView;

    .line 59
    iput-object p8, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->tvWeightTime:Landroid/widget/TextView;

    .line 60
    iput-object p9, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->weightTotal:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemWeightRecordBinding;
    .registers 11

    .line 90
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    const v0, 0x7f090322

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_59

    const v0, 0x7f090340

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_59

    const v0, 0x7f090342

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_59

    const v0, 0x7f09053c

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/SwipeDragLayout;

    if-eqz v6, :cond_59

    const v0, 0x7f09060b

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_59

    const v0, 0x7f090719

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_59

    const v0, 0x7f0907e2

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_59

    .line 134
    new-instance p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v9}, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Lcom/keephealth/android/views/SwipeDragLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 137
    :cond_59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemWeightRecordBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemWeightRecordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemWeightRecordBinding;
    .registers 5

    const v0, 0x7f0c0141

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemWeightRecordBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemWeightRecordBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
