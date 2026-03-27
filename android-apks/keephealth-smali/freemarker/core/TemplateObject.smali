.class public abstract Lfreemarker/core/TemplateObject;
.super Ljava/lang/Object;
.source "TemplateObject.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final RUNTIME_EVAL_LINE_DISPLACEMENT:I = -0x3b9aca00


# instance fields
.field beginColumn:I

.field beginLine:I

.field endColumn:I

.field endLine:I

.field private template:Lfreemarker/template/Template;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .registers 6

    .line 152
    iget v0, p0, Lfreemarker/core/TemplateObject;->beginLine:I

    const/4 v1, 0x0

    if-lt p2, v0, :cond_1a

    iget v2, p0, Lfreemarker/core/TemplateObject;->endLine:I

    if-le p2, v2, :cond_a

    goto :goto_1a

    :cond_a
    if-ne p2, v0, :cond_11

    .line 156
    iget v0, p0, Lfreemarker/core/TemplateObject;->beginColumn:I

    if-ge p1, v0, :cond_11

    return v1

    :cond_11
    if-ne p2, v2, :cond_18

    .line 161
    iget p2, p0, Lfreemarker/core/TemplateObject;->endColumn:I

    if-le p1, p2, :cond_18

    return v1

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_1a
    :goto_1a
    return v1
.end method

.method copyLocationFrom(Lfreemarker/core/TemplateObject;)Lfreemarker/core/TemplateObject;
    .registers 3

    .line 173
    iget-object v0, p1, Lfreemarker/core/TemplateObject;->template:Lfreemarker/template/Template;

    iput-object v0, p0, Lfreemarker/core/TemplateObject;->template:Lfreemarker/template/Template;

    .line 174
    iget v0, p1, Lfreemarker/core/TemplateObject;->beginColumn:I

    iput v0, p0, Lfreemarker/core/TemplateObject;->beginColumn:I

    .line 175
    iget v0, p1, Lfreemarker/core/TemplateObject;->beginLine:I

    iput v0, p0, Lfreemarker/core/TemplateObject;->beginLine:I

    .line 176
    iget v0, p1, Lfreemarker/core/TemplateObject;->endColumn:I

    iput v0, p0, Lfreemarker/core/TemplateObject;->endColumn:I

    .line 177
    iget p1, p1, Lfreemarker/core/TemplateObject;->endLine:I

    iput p1, p0, Lfreemarker/core/TemplateObject;->endLine:I

    return-object p0
.end method

.method public final getBeginColumn()I
    .registers 2

    .line 81
    iget v0, p0, Lfreemarker/core/TemplateObject;->beginColumn:I

    return v0
.end method

.method public final getBeginLine()I
    .registers 2

    .line 85
    iget v0, p0, Lfreemarker/core/TemplateObject;->beginLine:I

    return v0
.end method

.method public abstract getCanonicalForm()Ljava/lang/String;
.end method

.method public final getEndColumn()I
    .registers 2

    .line 89
    iget v0, p0, Lfreemarker/core/TemplateObject;->endColumn:I

    return v0
.end method

.method public final getEndLine()I
    .registers 2

    .line 93
    iget v0, p0, Lfreemarker/core/TemplateObject;->endLine:I

    return v0
.end method

.method public getEndLocation()Ljava/lang/String;
    .registers 4

    .line 113
    iget-object v0, p0, Lfreemarker/core/TemplateObject;->template:Lfreemarker/template/Template;

    iget v1, p0, Lfreemarker/core/TemplateObject;->endLine:I

    iget v2, p0, Lfreemarker/core/TemplateObject;->endColumn:I

    invoke-static {v0, v1, v2}, Lfreemarker/core/_MessageUtil;->formatLocationForEvaluationError(Lfreemarker/template/Template;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndLocationQuoted()Ljava/lang/String;
    .registers 2

    .line 121
    invoke-virtual {p0}, Lfreemarker/core/TemplateObject;->getEndLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getNodeTypeSymbol()Ljava/lang/String;
.end method

.method abstract getParameterCount()I
.end method

.method abstract getParameterRole(I)Lfreemarker/core/ParameterRole;
.end method

.method abstract getParameterValue(I)Ljava/lang/Object;
.end method

.method public final getSource()Ljava/lang/String;
    .registers 6

    .line 126
    iget-object v0, p0, Lfreemarker/core/TemplateObject;->template:Lfreemarker/template/Template;

    if-eqz v0, :cond_11

    .line 127
    iget v1, p0, Lfreemarker/core/TemplateObject;->beginColumn:I

    iget v2, p0, Lfreemarker/core/TemplateObject;->beginLine:I

    iget v3, p0, Lfreemarker/core/TemplateObject;->endColumn:I

    iget v4, p0, Lfreemarker/core/TemplateObject;->endLine:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lfreemarker/template/Template;->getSource(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_15

    goto :goto_19

    .line 133
    :cond_15
    invoke-virtual {p0}, Lfreemarker/core/TemplateObject;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0
.end method

.method public getStartLocation()Ljava/lang/String;
    .registers 4

    .line 101
    iget-object v0, p0, Lfreemarker/core/TemplateObject;->template:Lfreemarker/template/Template;

    iget v1, p0, Lfreemarker/core/TemplateObject;->beginLine:I

    iget v2, p0, Lfreemarker/core/TemplateObject;->beginColumn:I

    invoke-static {v0, v1, v2}, Lfreemarker/core/_MessageUtil;->formatLocationForEvaluationError(Lfreemarker/template/Template;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartLocationQuoted()Ljava/lang/String;
    .registers 2

    .line 109
    invoke-virtual {p0}, Lfreemarker/core/TemplateObject;->getStartLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplate()Lfreemarker/template/Template;
    .registers 2

    .line 169
    iget-object v0, p0, Lfreemarker/core/TemplateObject;->template:Lfreemarker/template/Template;

    return-object v0
.end method

.method setLocation(Lfreemarker/template/Template;IIII)V
    .registers 6

    .line 73
    iput-object p1, p0, Lfreemarker/core/TemplateObject;->template:Lfreemarker/template/Template;

    .line 74
    iput p2, p0, Lfreemarker/core/TemplateObject;->beginColumn:I

    .line 75
    iput p3, p0, Lfreemarker/core/TemplateObject;->beginLine:I

    .line 76
    iput p4, p0, Lfreemarker/core/TemplateObject;->endColumn:I

    .line 77
    iput p5, p0, Lfreemarker/core/TemplateObject;->endLine:I

    return-void
.end method

.method final setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V
    .registers 10

    .line 69
    iget v2, p2, Lfreemarker/core/TemplateObject;->beginColumn:I

    iget v3, p2, Lfreemarker/core/TemplateObject;->beginLine:I

    iget v4, p3, Lfreemarker/core/TemplateObject;->endColumn:I

    iget v5, p3, Lfreemarker/core/TemplateObject;->endLine:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/TemplateObject;->setLocation(Lfreemarker/template/Template;IIII)V

    return-void
.end method

.method final setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/Token;)V
    .registers 10

    .line 65
    iget v2, p2, Lfreemarker/core/TemplateObject;->beginColumn:I

    iget v3, p2, Lfreemarker/core/TemplateObject;->beginLine:I

    iget v4, p3, Lfreemarker/core/Token;->endColumn:I

    iget v5, p3, Lfreemarker/core/Token;->endLine:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/TemplateObject;->setLocation(Lfreemarker/template/Template;IIII)V

    return-void
.end method

.method final setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/TemplateObject;)V
    .registers 10

    .line 61
    iget v2, p2, Lfreemarker/core/Token;->beginColumn:I

    iget v3, p2, Lfreemarker/core/Token;->beginLine:I

    iget v4, p3, Lfreemarker/core/TemplateObject;->endColumn:I

    iget v5, p3, Lfreemarker/core/TemplateObject;->endLine:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/TemplateObject;->setLocation(Lfreemarker/template/Template;IIII)V

    return-void
.end method

.method final setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V
    .registers 10

    .line 46
    iget v2, p2, Lfreemarker/core/Token;->beginColumn:I

    iget v3, p2, Lfreemarker/core/Token;->beginLine:I

    iget v4, p3, Lfreemarker/core/Token;->endColumn:I

    iget v5, p3, Lfreemarker/core/Token;->endLine:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/TemplateObject;->setLocation(Lfreemarker/template/Template;IIII)V

    return-void
.end method

.method final setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;Lfreemarker/core/TemplateElements;)V
    .registers 5

    .line 50
    invoke-virtual {p4}, Lfreemarker/core/TemplateElements;->getLast()Lfreemarker/core/TemplateElement;

    move-result-object p4

    if-eqz p4, :cond_a

    .line 53
    invoke-virtual {p0, p1, p2, p4}, Lfreemarker/core/TemplateObject;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/TemplateObject;)V

    goto :goto_d

    .line 56
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/TemplateObject;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V

    :goto_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/TemplateObject;->getSource()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    goto :goto_d

    .line 144
    :cond_9
    invoke-virtual {p0}, Lfreemarker/core/TemplateObject;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method
