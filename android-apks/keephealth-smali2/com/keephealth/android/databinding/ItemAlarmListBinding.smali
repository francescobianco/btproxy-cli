.class public final Lcom/keephealth/android/databinding/ItemAlarmListBinding;
.super Ljava/lang/Object;
.source "ItemAlarmListBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final alarmCycle:Landroid/widget/TextView;

.field public final alarmIcon:Landroid/widget/ImageView;

.field public final alarmSwitch:Lcom/keephealth/android/views/CustomToggleButton;

.field public final alarmTime:Landroid/widget/TextView;

.field public final layoutContent:Landroid/widget/RelativeLayout;

.field public final layoutDelete:Landroid/widget/LinearLayout;

.field public final layoutItme:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final slidlayout:Lcom/keephealth/android/views/RvSlideLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/keephealth/android/views/CustomToggleButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/RvSlideLayout;)V
    .registers 10

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 56
    iput-object p2, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->alarmCycle:Landroid/widget/TextView;

    .line 57
    iput-object p3, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->alarmIcon:Landroid/widget/ImageView;

    .line 58
    iput-object p4, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->alarmSwitch:Lcom/keephealth/android/views/CustomToggleButton;

    .line 59
    iput-object p5, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->alarmTime:Landroid/widget/TextView;

    .line 60
    iput-object p6, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->layoutContent:Landroid/widget/RelativeLayout;

    .line 61
    iput-object p7, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->layoutDelete:Landroid/widget/LinearLayout;

    .line 62
    iput-object p8, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->layoutItme:Landroid/widget/LinearLayout;

    .line 63
    iput-object p9, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->slidlayout:Lcom/keephealth/android/views/RvSlideLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemAlarmListBinding;
    .registers 13

    const v0, 0x7f090052

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_5f

    const v0, 0x7f090053

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_5f

    const v0, 0x7f090059

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/keephealth/android/views/CustomToggleButton;

    if-eqz v6, :cond_5f

    const v0, 0x7f09005a

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5f

    .line 117
    move-object v8, p0

    check-cast v8, Landroid/widget/RelativeLayout;

    const v0, 0x7f090322

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5f

    const v0, 0x7f09030f

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_5f

    const v0, 0x7f09057c

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/keephealth/android/views/RvSlideLayout;

    if-eqz v11, :cond_5f

    .line 137
    new-instance p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v11}, Lcom/keephealth/android/databinding/ItemAlarmListBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/keephealth/android/views/CustomToggleButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/RvSlideLayout;)V

    return-object p0

    .line 140
    :cond_5f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ItemAlarmListBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemAlarmListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/ItemAlarmListBinding;
    .registers 5

    const v0, 0x7f0c0112

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/ItemAlarmListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/databinding/ItemAlarmListBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
