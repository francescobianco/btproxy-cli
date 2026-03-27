.class public Lcom/keephealth/android/util/CourseDataUtil;
.super Ljava/lang/Object;
.source "CourseDataUtil.java"


# instance fields
.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/CourseBean;",
            ">;"
        }
    .end annotation
.end field

.field mListAft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/CourseBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDataCourseAft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/CourseBean;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p1}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 52
    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 53
    new-instance p2, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p2}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 54
    invoke-virtual {p2, p3}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 55
    new-instance p3, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p3}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 56
    invoke-virtual {p3, p4}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 57
    new-instance p4, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p4}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 58
    invoke-virtual {p4, p5}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 59
    new-instance p5, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p5}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 60
    invoke-virtual {p5, p6}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 61
    new-instance p6, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p6}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 62
    invoke-virtual {p6, p7}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 63
    new-instance p7, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p7}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 64
    invoke-virtual {p7, p8}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 65
    new-instance p8, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p8}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 66
    invoke-virtual {p8, p9}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 67
    new-instance p9, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p9}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 68
    invoke-virtual {p9, p10}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 70
    iget-object p10, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p10}, Ljava/util/List;->clear()V

    .line 71
    iget-object p10, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p10, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p10, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p1, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    invoke-interface {p1, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mListAft:Ljava/util/List;

    return-object p1
.end method

.method public setDataCourseMor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/CourseBean;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    .line 13
    new-instance v0, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 14
    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p1}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 16
    invoke-virtual {p1, p2}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 17
    new-instance p2, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p2}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 18
    invoke-virtual {p2, p3}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 19
    new-instance p3, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p3}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 20
    invoke-virtual {p3, p4}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 21
    new-instance p4, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p4}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 22
    invoke-virtual {p4, p5}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 23
    new-instance p5, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p5}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 24
    invoke-virtual {p5, p6}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 25
    new-instance p6, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p6}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 26
    invoke-virtual {p6, p7}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 27
    new-instance p7, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p7}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 28
    invoke-virtual {p7, p8}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 29
    new-instance p8, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p8}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 30
    invoke-virtual {p8, p9}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 31
    new-instance p9, Lcom/keephealth/android/childmodule/bean/CourseBean;

    invoke-direct {p9}, Lcom/keephealth/android/childmodule/bean/CourseBean;-><init>()V

    .line 32
    invoke-virtual {p9, p10}, Lcom/keephealth/android/childmodule/bean/CourseBean;->setCourseName(Ljava/lang/String;)V

    .line 33
    iget-object p10, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p10}, Ljava/util/List;->clear()V

    .line 34
    iget-object p10, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p10, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p10, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p1, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p1, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    invoke-interface {p1, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lcom/keephealth/android/util/CourseDataUtil;->mList:Ljava/util/List;

    return-object p1
.end method
