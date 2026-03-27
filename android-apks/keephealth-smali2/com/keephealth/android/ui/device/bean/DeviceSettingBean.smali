.class public Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;
.super Ljava/lang/Object;
.source "DeviceSettingBean.java"


# instance fields
.field private textView:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;->textView:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;->type:I

    return-void
.end method


# virtual methods
.method public getTextView()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;->textView:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;->type:I

    return v0
.end method

.method public setTextView(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;->textView:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DeviceSettingBean;->type:I

    return-void
.end method
