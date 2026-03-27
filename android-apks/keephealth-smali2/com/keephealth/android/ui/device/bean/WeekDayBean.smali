.class public Lcom/keephealth/android/ui/device/bean/WeekDayBean;
.super Ljava/lang/Object;
.source "WeekDayBean.java"


# instance fields
.field private isSelect:Z

.field private weekDayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/WeekDayBean;->weekDayName:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lcom/keephealth/android/ui/device/bean/WeekDayBean;->isSelect:Z

    return-void
.end method


# virtual methods
.method public getWeekDayName()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/WeekDayBean;->weekDayName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/bean/WeekDayBean;->isSelect:Z

    return v0
.end method

.method public setSelect(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/bean/WeekDayBean;->isSelect:Z

    return-void
.end method

.method public setWeekDayName(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/WeekDayBean;->weekDayName:Ljava/lang/String;

    return-void
.end method
