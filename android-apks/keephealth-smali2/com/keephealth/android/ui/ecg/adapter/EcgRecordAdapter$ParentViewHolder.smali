.class Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;
.super Ljava/lang/Object;
.source "EcgRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentViewHolder"
.end annotation


# instance fields
.field expanIcon:Landroid/widget/ImageView;

.field monthName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;->this$0:Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$1;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter$ParentViewHolder;-><init>(Lcom/keephealth/android/ui/ecg/adapter/EcgRecordAdapter;)V

    return-void
.end method
