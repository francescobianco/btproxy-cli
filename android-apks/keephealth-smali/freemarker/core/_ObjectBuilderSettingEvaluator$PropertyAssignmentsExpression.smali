.class Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;
.super Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;
.source "_ObjectBuilderSettingEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/_ObjectBuilderSettingEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyAssignmentsExpression"
.end annotation


# instance fields
.field private final bean:Ljava/lang/Object;

.field final synthetic this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;


# direct methods
.method public constructor <init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Ljava/lang/Object;)V
    .registers 4

    .line 1080
    iput-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;->this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;-><init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Lfreemarker/core/_ObjectBuilderSettingEvaluator$1;)V

    .line 1081
    iput-object p2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;->bean:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method eval()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;->this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;->bean:Ljava/lang/Object;

    iget-object v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;->namedParamNames:Ljava/util/List;

    iget-object v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;->namedParamValues:Ljava/util/List;

    # invokes: Lfreemarker/core/_ObjectBuilderSettingEvaluator;->setJavaBeanProperties(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->access$1300(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 1087
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method protected getAllowPositionalParameters()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
