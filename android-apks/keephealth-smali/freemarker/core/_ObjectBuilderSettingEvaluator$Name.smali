.class Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;
.super Ljava/lang/Object;
.source "_ObjectBuilderSettingEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/_ObjectBuilderSettingEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Name"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;)Ljava/lang/String;
    .registers 1

    .line 776
    iget-object p0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;->name:Ljava/lang/String;

    return-object p0
.end method
