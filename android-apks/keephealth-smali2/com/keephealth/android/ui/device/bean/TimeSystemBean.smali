.class public Lcom/keephealth/android/ui/device/bean/TimeSystemBean;
.super Ljava/lang/Object;
.source "TimeSystemBean.java"


# instance fields
.field private name:Ljava/lang/String;

.field private selected:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->type:I

    .line 13
    iput-object p2, p0, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->type:I

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->selected:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->selected:Z

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->type:I

    return-void
.end method
