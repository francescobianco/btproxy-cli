.class public final Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;
.super Ljava/lang/Object;
.source "ActivityDeviceSetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itCall:Lcom/keephealth/android/views/ItemLableValue;

.field public final itMessage:Lcom/keephealth/android/views/ItemLableValue;

.field public final itNoNotice:Lcom/keephealth/android/views/ItemLableValue;

.field public final llAlarm:Landroid/widget/LinearLayout;

.field public final llHrRange:Landroid/widget/LinearLayout;

.field public final llLongSit:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .registers 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->itCall:Lcom/keephealth/android/views/ItemLableValue;

    .line 46
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->itMessage:Lcom/keephealth/android/views/ItemLableValue;

    .line 47
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->itNoNotice:Lcom/keephealth/android/views/ItemLableValue;

    .line 48
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->llAlarm:Landroid/widget/LinearLayout;

    .line 49
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->llHrRange:Landroid/widget/LinearLayout;

    .line 50
    iput-object p7, p0, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->llLongSit:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;
    .registers 11

    const v0, 0x7f090252

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v4, :cond_52

    const v0, 0x7f090270

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v5, :cond_52

    const v0, 0x7f090274

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v6, :cond_52

    const v0, 0x7f090358

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_52

    const v0, 0x7f090378

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_52

    const v0, 0x7f090386

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_52

    .line 116
    new-instance v0, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;-><init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v0

    .line 119
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;
    .registers 5

    const v0, 0x7f0c003f

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityDeviceSetBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
