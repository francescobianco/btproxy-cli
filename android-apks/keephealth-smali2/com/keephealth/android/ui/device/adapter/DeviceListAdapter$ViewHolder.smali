.class final Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewHolder"
.end annotation


# instance fields
.field btnDelete:Landroid/widget/Button;

.field imageView:Landroid/widget/ImageView;

.field progressBar:Landroid/widget/ProgressBar;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;)V
    .registers 3

    .line 117
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;)V

    return-void
.end method
