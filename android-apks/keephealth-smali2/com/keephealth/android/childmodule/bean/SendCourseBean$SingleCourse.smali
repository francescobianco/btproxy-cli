.class public Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;
.super Ljava/lang/Object;
.source "SendCourseBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/childmodule/bean/SendCourseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleCourse"
.end annotation


# instance fields
.field private courseName:Ljava/lang/String;

.field private courseNameLength:I

.field private courseStartTime:I

.field private courseTimeLength:I

.field private courseZore:I

.field private currentDayCourseSub:I

.field private isEdit:Z

.field private weekDay:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCourseName()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseName:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseNameLength()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseNameLength:I

    return v0
.end method

.method public getCourseStartTime()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseStartTime:I

    return v0
.end method

.method public getCourseTimeLength()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseTimeLength:I

    return v0
.end method

.method public getCourseZore()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseZore:I

    return v0
.end method

.method public getCurrentDayCourseSub()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->currentDayCourseSub:I

    return v0
.end method

.method public getWeekDay()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->weekDay:I

    return v0
.end method

.method public isEdit()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->isEdit:Z

    return v0
.end method

.method public setCourseName(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseName:Ljava/lang/String;

    return-void
.end method

.method public setCourseNameLength(I)V
    .registers 2

    .line 104
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseNameLength:I

    return-void
.end method

.method public setCourseStartTime(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseStartTime:I

    return-void
.end method

.method public setCourseTimeLength(I)V
    .registers 2

    .line 96
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseTimeLength:I

    return-void
.end method

.method public setCourseZore(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->courseZore:I

    return-void
.end method

.method public setCurrentDayCourseSub(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->currentDayCourseSub:I

    return-void
.end method

.method public setEdit(Z)V
    .registers 2

    .line 64
    iput-boolean p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->isEdit:Z

    return-void
.end method

.method public setWeekDay(I)V
    .registers 2

    .line 120
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/SendCourseBean$SingleCourse;->weekDay:I

    return-void
.end method
