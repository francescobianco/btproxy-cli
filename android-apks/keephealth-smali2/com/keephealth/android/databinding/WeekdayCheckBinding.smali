.class public final Lcom/keephealth/android/databinding/WeekdayCheckBinding;
.super Ljava/lang/Object;
.source "WeekdayCheckBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/view/View;

.field public final weekDay1:Lcom/keephealth/android/views/ValueStateTextView;

.field public final weekDay2:Lcom/keephealth/android/views/ValueStateTextView;

.field public final weekDay3:Lcom/keephealth/android/views/ValueStateTextView;

.field public final weekDay4:Lcom/keephealth/android/views/ValueStateTextView;

.field public final weekDay5:Lcom/keephealth/android/views/ValueStateTextView;

.field public final weekDay6:Lcom/keephealth/android/views/ValueStateTextView;

.field public final weekDay7:Lcom/keephealth/android/views/ValueStateTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;)V
    .registers 9

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->rootView:Landroid/view/View;

    .line 46
    iput-object p2, p0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->weekDay1:Lcom/keephealth/android/views/ValueStateTextView;

    .line 47
    iput-object p3, p0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->weekDay2:Lcom/keephealth/android/views/ValueStateTextView;

    .line 48
    iput-object p4, p0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->weekDay3:Lcom/keephealth/android/views/ValueStateTextView;

    .line 49
    iput-object p5, p0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->weekDay4:Lcom/keephealth/android/views/ValueStateTextView;

    .line 50
    iput-object p6, p0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->weekDay5:Lcom/keephealth/android/views/ValueStateTextView;

    .line 51
    iput-object p7, p0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->weekDay6:Lcom/keephealth/android/views/ValueStateTextView;

    .line 52
    iput-object p8, p0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->weekDay7:Lcom/keephealth/android/views/ValueStateTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/WeekdayCheckBinding;
    .registers 12

    const v0, 0x7f0907da

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/keephealth/android/views/ValueStateTextView;

    if-eqz v4, :cond_5c

    const v0, 0x7f0907db

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/keephealth/android/views/ValueStateTextView;

    if-eqz v5, :cond_5c

    const v0, 0x7f0907dc

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/ValueStateTextView;

    if-eqz v6, :cond_5c

    const v0, 0x7f0907dd

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/keephealth/android/views/ValueStateTextView;

    if-eqz v7, :cond_5c

    const v0, 0x7f0907de

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/keephealth/android/views/ValueStateTextView;

    if-eqz v8, :cond_5c

    const v0, 0x7f0907df

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/keephealth/android/views/ValueStateTextView;

    if-eqz v9, :cond_5c

    const v0, 0x7f0907e0

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/keephealth/android/views/ValueStateTextView;

    if-eqz v10, :cond_5c

    .line 119
    new-instance v0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/keephealth/android/databinding/WeekdayCheckBinding;-><init>(Landroid/view/View;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;Lcom/keephealth/android/views/ValueStateTextView;)V

    return-object v0

    .line 122
    :cond_5c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/keephealth/android/databinding/WeekdayCheckBinding;
    .registers 3

    if-eqz p1, :cond_d

    const v0, 0x7f0c01b0

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    invoke-static {p1}, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/WeekdayCheckBinding;

    move-result-object p0

    return-object p0

    .line 65
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/databinding/WeekdayCheckBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
