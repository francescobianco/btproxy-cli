.class public Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;
.super Ljava/lang/Object;
.source "DeviceFragmentNew_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

.field private view7f0900bc:Landroid/view/View;

.field private view7f0901c7:Landroid/view/View;

.field private view7f0901c8:Landroid/view/View;

.field private view7f0901cf:Landroid/view/View;

.field private view7f0901d1:Landroid/view/View;

.field private view7f0901d2:Landroid/view/View;

.field private view7f0901d9:Landroid/view/View;

.field private view7f0901e2:Landroid/view/View;

.field private view7f090367:Landroid/view/View;

.field private view7f0904d7:Landroid/view/View;

.field private view7f0904ee:Landroid/view/View;

.field private view7f0904ef:Landroid/view/View;

.field private view7f090501:Landroid/view/View;

.field private view7f09051c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Landroid/view/View;)V
    .registers 7

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    .line 57
    const-string v0, "field \'barBgTitle\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090081

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->barBgTitle:Landroid/widget/RelativeLayout;

    .line 58
    const-string v0, "field \'btnUnbind\' and method \'unBindDevice\'"

    const v1, 0x7f0900bc

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    const-string v2, "field \'btnUnbind\'"

    const-class v3, Landroid/widget/Button;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->btnUnbind:Landroid/widget/Button;

    .line 60
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0900bc:Landroid/view/View;

    .line 61
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const-string v0, "field \'rlBindDevice\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0904dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlBindDevice:Landroid/widget/RelativeLayout;

    .line 68
    const-string v0, "field \'ivDevice\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0902a8

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivDevice:Landroid/widget/ImageView;

    .line 69
    const-string v0, "field \'ivDevice2\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0902a9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivDevice2:Landroid/widget/ImageView;

    .line 70
    const-string v0, "field \'tvDeviceName\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090650

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvDeviceName:Landroid/widget/TextView;

    .line 71
    const-string v0, "field \'ivPower\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0902c4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    .line 72
    const-string v0, "field \'tvPower\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a1

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPower:Landroid/widget/TextView;

    .line 73
    const-string v0, "field \'tvConnectStatus\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090635

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    .line 74
    const-string v0, "field \'tvPid\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906a0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPid:Landroid/widget/TextView;

    .line 75
    const-string v0, "field \'tvMac\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090681

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvMac:Landroid/widget/TextView;

    .line 76
    const-string v0, "field \'rlUnBindDevice\' and method \'bindDevice\'"

    const v1, 0x7f09051c

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    const-string v2, "field \'rlUnBindDevice\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlUnBindDevice:Landroid/widget/RelativeLayout;

    .line 78
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f09051c:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-string v0, "field \'llDialCenter\' and method \'dialCenter\'"

    const v1, 0x7f090367

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    const-string v2, "field \'llDialCenter\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    .line 87
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f090367:Landroid/view/View;

    .line 88
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$3;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const-string v0, "field \'tvDialCenter\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090651

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvDialCenter:Landroid/widget/TextView;

    .line 95
    const-string v0, "field \'recyclerDialCenter\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f09049e

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    const-string v0, "field \'tvNotice\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090699

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvNotice:Landroid/widget/TextView;

    .line 97
    const-string v0, "field \'tvScreen\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906b4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvScreen:Landroid/widget/TextView;

    .line 98
    const-string v0, "field \'tvAlarm\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090616

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvAlarm:Landroid/widget/TextView;

    .line 99
    const-string v0, "field \'tvHealthMonitoring\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090668

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvHealthMonitoring:Landroid/widget/TextView;

    .line 100
    const-string v0, "field \'tvHealthReminder\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090669

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvHealthReminder:Landroid/widget/TextView;

    .line 101
    const-string v0, "field \'ilMoreSet\' and method \'moreSet\'"

    const v1, 0x7f0901e2

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 102
    const-string v2, "field \'ilMoreSet\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilMoreSet:Lcom/keephealth/android/views/ItemLableValue;

    .line 103
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901e2:Landroid/view/View;

    .line 104
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$4;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const-string v0, "field \'ilContacts\' and method \'ilContacts\'"

    const v1, 0x7f0901cf

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 111
    const-string v2, "field \'ilContacts\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilContacts:Lcom/keephealth/android/views/ItemLableValue;

    .line 112
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901cf:Landroid/view/View;

    .line 113
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$5;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const-string v0, "field \'ilFindDevice\' and method \'findDevice\'"

    const v1, 0x7f0901d9

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 120
    const-string v2, "field \'ilFindDevice\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilFindDevice:Lcom/keephealth/android/views/ItemLableValue;

    .line 121
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901d9:Landroid/view/View;

    .line 122
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$6;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const-string v0, "field \'ilDeviceVersion\' and method \'updateDevice\'"

    const v1, 0x7f0901d2

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 129
    const-string v2, "field \'ilDeviceVersion\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    .line 130
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901d2:Landroid/view/View;

    .line 131
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$7;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const-string v0, "field \'ilDeviceReset\' and method \'reSetDevice\'"

    const v1, 0x7f0901d1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 138
    const-string v2, "field \'ilDeviceReset\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceReset:Lcom/keephealth/android/views/ItemLableValue;

    .line 139
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901d1:Landroid/view/View;

    .line 140
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$8;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const-string v0, "field \'ilBackPermission\' and method \'backPermission\'"

    const v1, 0x7f0901c8

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 147
    const-string v2, "field \'ilBackPermission\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilBackPermission:Lcom/keephealth/android/views/ItemLableValue;

    .line 148
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901c8:Landroid/view/View;

    .line 149
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$9;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const-string v0, "field \'ilAudioBluetooth\' and method \'audioBluetooth\'"

    const v1, 0x7f0901c7

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 156
    const-string v2, "field \'ilAudioBluetooth\'"

    const-class v3, Lcom/keephealth/android/views/ItemLableValue;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilAudioBluetooth:Lcom/keephealth/android/views/ItemLableValue;

    .line 157
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901c7:Landroid/view/View;

    .line 158
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$10;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const-string v0, "field \'ilNavi\'"

    const-class v1, Lcom/keephealth/android/views/ItemLableValue;

    const v2, 0x7f0901e4

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ItemLableValue;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilNavi:Lcom/keephealth/android/views/ItemLableValue;

    .line 165
    const-string v0, "field \'rlSport\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090516

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlSport:Landroid/widget/RelativeLayout;

    .line 166
    const-string v0, "field \'tvSport\'"

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0906d6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvSport:Landroid/widget/TextView;

    .line 167
    const-string v0, "field \'rlNotice\' and method \'noticeEdit\'"

    const v1, 0x7f090501

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 168
    const-string v2, "field \'rlNotice\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlNotice:Landroid/widget/RelativeLayout;

    .line 169
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f090501:Landroid/view/View;

    .line 170
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$11;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$11;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const-string v0, "field \'rlScreen\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f09050f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlScreen:Landroid/widget/RelativeLayout;

    .line 177
    const-string v0, "field \'rvSetting\'"

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090533

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rvSetting:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    const-string v0, "field \'ivConnectStatus\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0902a6

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    const v0, 0x7f0904d7

    .line 179
    const-string v1, "method \'alarmEdit\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 180
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0904d7:Landroid/view/View;

    .line 181
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$12;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$12;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904ee

    .line 187
    const-string v1, "method \'healthMonitoring\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 188
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0904ee:Landroid/view/View;

    .line 189
    new-instance v1, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$13;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$13;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904ef

    .line 195
    const-string v1, "method \'healthReminder\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 196
    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0904ef:Landroid/view/View;

    .line 197
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$14;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$14;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    if-eqz v0, :cond_ae

    const/4 v1, 0x0

    .line 210
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->target:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    .line 212
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->barBgTitle:Landroid/widget/RelativeLayout;

    .line 213
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->btnUnbind:Landroid/widget/Button;

    .line 214
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlBindDevice:Landroid/widget/RelativeLayout;

    .line 215
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivDevice:Landroid/widget/ImageView;

    .line 216
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivDevice2:Landroid/widget/ImageView;

    .line 217
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvDeviceName:Landroid/widget/TextView;

    .line 218
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivPower:Landroid/widget/ImageView;

    .line 219
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPower:Landroid/widget/TextView;

    .line 220
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvConnectStatus:Landroid/widget/TextView;

    .line 221
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvPid:Landroid/widget/TextView;

    .line 222
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvMac:Landroid/widget/TextView;

    .line 223
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlUnBindDevice:Landroid/widget/RelativeLayout;

    .line 224
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->llDialCenter:Landroid/widget/LinearLayout;

    .line 225
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvDialCenter:Landroid/widget/TextView;

    .line 226
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->recyclerDialCenter:Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvNotice:Landroid/widget/TextView;

    .line 228
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvScreen:Landroid/widget/TextView;

    .line 229
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvAlarm:Landroid/widget/TextView;

    .line 230
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvHealthMonitoring:Landroid/widget/TextView;

    .line 231
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvHealthReminder:Landroid/widget/TextView;

    .line 232
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilMoreSet:Lcom/keephealth/android/views/ItemLableValue;

    .line 233
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilContacts:Lcom/keephealth/android/views/ItemLableValue;

    .line 234
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilFindDevice:Lcom/keephealth/android/views/ItemLableValue;

    .line 235
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceVersion:Lcom/keephealth/android/views/ItemLableValue;

    .line 236
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilDeviceReset:Lcom/keephealth/android/views/ItemLableValue;

    .line 237
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilBackPermission:Lcom/keephealth/android/views/ItemLableValue;

    .line 238
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilAudioBluetooth:Lcom/keephealth/android/views/ItemLableValue;

    .line 239
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ilNavi:Lcom/keephealth/android/views/ItemLableValue;

    .line 240
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlSport:Landroid/widget/RelativeLayout;

    .line 241
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->tvSport:Landroid/widget/TextView;

    .line 242
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlNotice:Landroid/widget/RelativeLayout;

    .line 243
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rlScreen:Landroid/widget/RelativeLayout;

    .line 244
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->rvSetting:Landroidx/recyclerview/widget/RecyclerView;

    .line 245
    iput-object v1, v0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->ivConnectStatus:Landroid/widget/ImageView;

    .line 247
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0900bc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0900bc:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f09051c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f09051c:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f090367:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f090367:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901e2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901e2:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901cf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901cf:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901d9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901d9:Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901d2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901d2:Landroid/view/View;

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901d1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901d1:Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901c8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901c8:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901c7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0901c7:Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f090501:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f090501:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0904d7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0904d7:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0904ee:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0904ee:Landroid/view/View;

    .line 273
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0904ef:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;->view7f0904ef:Landroid/view/View;

    return-void

    .line 209
    :cond_ae
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
