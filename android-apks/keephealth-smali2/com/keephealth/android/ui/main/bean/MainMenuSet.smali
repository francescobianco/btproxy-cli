.class public Lcom/keephealth/android/ui/main/bean/MainMenuSet;
.super Ljava/lang/Object;
.source "MainMenuSet.java"


# instance fields
.field private id:Ljava/lang/Long;

.field private isShow:Z

.field private menuName:I

.field private order:I

.field private timtMillis:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ZJI)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->id:Ljava/lang/Long;

    .line 28
    iput-boolean p2, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow:Z

    .line 29
    iput-wide p3, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->timtMillis:J

    .line 30
    iput p5, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->menuName:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ZJII)V
    .registers 7

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->id:Ljava/lang/Long;

    .line 20
    iput-boolean p2, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow:Z

    .line 21
    iput-wide p3, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->timtMillis:J

    .line 22
    iput p5, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->menuName:I

    .line 23
    iput p6, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->order:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsShow()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow:Z

    return v0
.end method

.method public getMenuName()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->menuName:I

    return v0
.end method

.method public getOrder()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->order:I

    return v0
.end method

.method public getTimtMillis()J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->timtMillis:J

    return-wide v0
.end method

.method public isShow()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow:Z

    return v0
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsShow(Z)V
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow:Z

    return-void
.end method

.method public setMenuName(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->menuName:I

    return-void
.end method

.method public setOrder(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->order:I

    return-void
.end method

.method public setShow(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow:Z

    return-void
.end method

.method public setTimtMillis(J)V
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->timtMillis:J

    return-void
.end method
