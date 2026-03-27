.class public Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceListAdapter"


# instance fields
.field private mBounded:Z

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mData:Ljava/util/ArrayList;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mBounded:Z

    .line 36
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 4

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mData:Ljava/util/ArrayList;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-boolean p3, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mBounded:Z

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;)Ljava/util/ArrayList;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 62
    new-instance p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;)V

    if-nez p2, :cond_57

    .line 64
    iget-boolean p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mBounded:Z

    const v1, 0x7f0905da

    if-eqz p2, :cond_2c

    .line 65
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0150

    invoke-virtual {p2, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f0900a2

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->btnDelete:Landroid/widget/Button;

    goto :goto_53

    .line 69
    :cond_2c
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0151

    invoke-virtual {p2, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090471

    .line 70
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f0901fa

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 74
    :goto_53
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5d

    .line 76
    :cond_57
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;

    .line 79
    :goto_5d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DeviceEntry;

    .line 81
    iget-object v1, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-boolean v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->mBounded:Z

    if-eqz v1, :cond_7f

    .line 83
    iget-object p3, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$1;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;Lcom/keephealth/android/model/bean/DeviceEntry;I)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a3

    .line 101
    :cond_7f
    iget p1, v0, Lcom/keephealth/android/model/bean/DeviceEntry;->state:I

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p1, v1, :cond_8d

    .line 102
    iget-object p1, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_92

    .line 104
    :cond_8d
    iget-object p1, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    :goto_92
    iget p1, v0, Lcom/keephealth/android/model/bean/DeviceEntry;->state:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_9e

    .line 108
    iget-object p1, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a3

    .line 110
    :cond_9e
    iget-object p1, p3, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a3
    return-object p2
.end method
