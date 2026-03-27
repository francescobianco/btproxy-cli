.class abstract Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;
.super Lfreemarker/core/_ObjectBuilderSettingEvaluator$SettingExpression;
.source "_ObjectBuilderSettingEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/_ObjectBuilderSettingEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ExpressionWithParameters"
.end annotation


# instance fields
.field protected namedParamNames:Ljava/util/List;

.field protected namedParamValues:Ljava/util/List;

.field protected positionalParamValues:Ljava/util/List;

.field final synthetic this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;


# direct methods
.method private constructor <init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;)V
    .registers 2

    .line 789
    iput-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;->this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$SettingExpression;-><init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator$1;)V

    .line 790
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;->positionalParamValues:Ljava/util/List;

    .line 791
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;->namedParamNames:Ljava/util/List;

    .line 792
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;->namedParamValues:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Lfreemarker/core/_ObjectBuilderSettingEvaluator$1;)V
    .registers 3

    .line 789
    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;-><init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;)V

    return-void
.end method


# virtual methods
.method protected abstract getAllowPositionalParameters()Z
.end method
