.class public final Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;
.super Ljava/lang/Object;
.source "ActivityHealthReminderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ilHeartWarn:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilLongSit:Lcom/keephealth/android/views/ItemLableValue;

.field public final ilWater:Lcom/keephealth/android/views/ItemLableValue;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final viewHeatWarn:Landroid/view/View;

.field public final viewLine:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 41
    iput-object p2, p0, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->ilHeartWarn:Lcom/keephealth/android/views/ItemLableValue;

    .line 42
    iput-object p3, p0, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->ilLongSit:Lcom/keephealth/android/views/ItemLableValue;

    .line 43
    iput-object p4, p0, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->ilWater:Lcom/keephealth/android/views/ItemLableValue;

    .line 44
    iput-object p5, p0, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->viewHeatWarn:Landroid/view/View;

    .line 45
    iput-object p6, p0, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->viewLine:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;
    .registers 10

    const v0, 0x7f0901de

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v4, :cond_40

    const v0, 0x7f0901e0

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v5, :cond_40

    const v0, 0x7f0901f5

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/ItemLableValue;

    if-eqz v6, :cond_40

    const v0, 0x7f0907b9

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_40

    const v0, 0x7f0907ba

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_40

    .line 105
    new-instance v0, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;-><init>(Landroid/widget/LinearLayout;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Lcom/keephealth/android/views/ItemLableValue;Landroid/view/View;Landroid/view/View;)V

    return-object v0

    .line 108
    :cond_40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;
    .registers 5

    const v0, 0x7f0c005d

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/keephealth/android/databinding/ActivityHealthReminderBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
