.class public final Lcom/keephealth/android/databinding/DialogSelectTimeBinding;
.super Ljava/lang/Object;
.source "DialogSelectTimeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

.field public final alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

.field public final llTime:Landroid/widget/LinearLayout;

.field public final point:Lcom/keephealth/android/views/wheel/WheelView;

.field public final rlCancel:Landroid/widget/RelativeLayout;

.field public final rlNoSet:Landroid/widget/RelativeLayout;

.field public final rlOk:Landroid/widget/RelativeLayout;

.field public final rlTime:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCancel:Landroid/widget/TextView;

.field public final tvNoSet:Landroid/widget/TextView;

.field public final tvOk:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/wheel/WheelView;Lcom/keephealth/android/views/wheel/WheelView;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/wheel/WheelView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 63
    iput-object p2, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->alarmSetHour:Lcom/keephealth/android/views/wheel/WheelView;

    .line 64
    iput-object p3, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->alarmSetMin:Lcom/keephealth/android/views/wheel/WheelView;

    .line 65
    iput-object p4, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->llTime:Landroid/widget/LinearLayout;

    .line 66
    iput-object p5, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->point:Lcom/keephealth/android/views/wheel/WheelView;

    .line 67
    iput-object p6, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->rlCancel:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p7, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->rlNoSet:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p8, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->rlOk:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p9, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->rlTime:Landroid/widget/RelativeLayout;

    .line 71
    iput-object p10, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->tvCancel:Landroid/widget/TextView;

    .line 72
    iput-object p11, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->tvNoSet:Landroid/widget/TextView;

    .line 73
    iput-object p12, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->tvOk:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogSelectTimeBinding;
    .registers 16

    const v0, 0x7f090055

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/keephealth/android/views/wheel/WheelView;

    if-eqz v4, :cond_8e

    const v0, 0x7f090056

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/keephealth/android/views/wheel/WheelView;

    if-eqz v5, :cond_8e

    const v0, 0x7f0903cb

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_8e

    const v0, 0x7f090468

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/keephealth/android/views/wheel/WheelView;

    if-eqz v7, :cond_8e

    const v0, 0x7f090528

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_8e

    const v0, 0x7f090529

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_8e

    const v0, 0x7f09052a

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_8e

    const v0, 0x7f09052b

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_8e

    const v0, 0x7f090726

    .line 152
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_8e

    const v0, 0x7f090758

    .line 158
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_8e

    const v0, 0x7f090762

    .line 164
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_8e

    .line 169
    new-instance v0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/keephealth/android/views/wheel/WheelView;Lcom/keephealth/android/views/wheel/WheelView;Landroid/widget/LinearLayout;Lcom/keephealth/android/views/wheel/WheelView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 172
    :cond_8e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/DialogSelectTimeBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, v0, v1}, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogSelectTimeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/keephealth/android/databinding/DialogSelectTimeBinding;
    .registers 5

    const v0, 0x7f0c00eb

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    :cond_d
    invoke-static {p0}, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->bind(Landroid/view/View;)Lcom/keephealth/android/databinding/DialogSelectTimeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/databinding/DialogSelectTimeBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
