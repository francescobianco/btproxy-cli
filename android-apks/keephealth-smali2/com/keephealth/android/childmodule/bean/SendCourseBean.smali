.class public Lcom/keephealth/android/childmodule/bean/SendCourseBean;
.super Ljava/lang/Object;
.source "SendCourseBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;
    }
.end annotation


# instance fields
.field private currentDayCourse:I

.field private singleCourseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation
.end field

.field private updateCourseNumber:I

.field private weekSub:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentDayCourse()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->currentDayCourse:I

    return v0
.end method

.method public getSingleCourseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->singleCourseList:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateCourseNumber()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->updateCourseNumber:I

    return v0
.end method

.method public getWeekSub()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->weekSub:I

    return v0
.end method

.method public setCurrentDayCourse(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->currentDayCourse:I

    return-void
.end method

.method public setSingleCourseList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->singleCourseList:Ljava/util/List;

    return-void
.end method

.method public setUpdateCourseNumber(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->updateCourseNumber:I

    return-void
.end method

.method public setWeekSub(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean;->weekSub:I

    return-void
.end method
