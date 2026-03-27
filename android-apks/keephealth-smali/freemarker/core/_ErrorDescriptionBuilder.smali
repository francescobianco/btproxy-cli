.class public Lfreemarker/core/_ErrorDescriptionBuilder;
.super Ljava/lang/Object;
.source "_ErrorDescriptionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;
    }
.end annotation


# static fields
.field private static final LOG:Lfreemarker/log/Logger;


# instance fields
.field private blamed:Lfreemarker/core/Expression;

.field private final description:Ljava/lang/String;

.field private final descriptionParts:[Ljava/lang/Object;

.field private showBlamer:Z

.field private template:Lfreemarker/template/Template;

.field private tip:Ljava/lang/Object;

.field private tips:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-string v0, "freemarker.runtime"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/core/_ErrorDescriptionBuilder;->LOG:Lfreemarker/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->description:Ljava/lang/String;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->descriptionParts:[Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->descriptionParts:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->description:Ljava/lang/String;

    return-void
.end method

.method private appendParts(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .registers 13

    .line 211
    iget-object v0, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->template:Lfreemarker/template/Template;

    if-eqz v0, :cond_5

    goto :goto_f

    :cond_5
    iget-object v0, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->blamed:Lfreemarker/core/Expression;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lfreemarker/core/Expression;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x0

    move v2, v1

    .line 212
    :goto_11
    array-length v3, p2

    if-ge v2, v3, :cond_9b

    .line 213
    aget-object v3, p2, v2

    .line 214
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_23

    .line 215
    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lfreemarker/core/_ErrorDescriptionBuilder;->appendParts(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto/16 :goto_97

    .line 218
    :cond_23
    invoke-static {v3}, Lfreemarker/core/_ErrorDescriptionBuilder;->tryToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2b

    .line 220
    const-string v3, "null"

    :cond_2b
    if-eqz v0, :cond_94

    .line 224
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_90

    .line 225
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_90

    const/4 v4, 0x1

    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    const/4 v7, 0x2

    if-eq v5, v6, :cond_62

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x40

    if-eq v5, v8, :cond_62

    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x2f

    if-ne v5, v9, :cond_90

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_62

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_90

    .line 230
    :cond_62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_90

    .line 231
    invoke-virtual {v0}, Lfreemarker/template/Template;->getActualTagSyntax()I

    move-result v5

    if-ne v5, v7, :cond_8c

    const/16 v5, 0x5b

    .line 232
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    .line 234
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_97

    .line 236
    :cond_8c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_97

    .line 239
    :cond_90
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_97

    .line 242
    :cond_94
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_97
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    :cond_9b
    return-void
.end method

.method private containsSingleInterpolatoinLiteral(Lfreemarker/core/Expression;I)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x14

    if-le p2, v1, :cond_9

    return v0

    .line 176
    :cond_9
    instance-of v1, p1, Lfreemarker/core/StringLiteral;

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    move-object v1, p1

    check-cast v1, Lfreemarker/core/StringLiteral;

    invoke-virtual {v1}, Lfreemarker/core/StringLiteral;->isSingleInterpolationLiteral()Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    .line 178
    :cond_18
    invoke-virtual {p1}, Lfreemarker/core/Expression;->getParameterCount()I

    move-result v1

    move v3, v0

    :goto_1d
    if-ge v3, v1, :cond_35

    .line 180
    invoke-virtual {p1, v3}, Lfreemarker/core/Expression;->getParameterValue(I)Ljava/lang/Object;

    move-result-object v4

    .line 181
    instance-of v5, v4, Lfreemarker/core/Expression;

    if-eqz v5, :cond_32

    .line 182
    check-cast v4, Lfreemarker/core/Expression;

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v4, v5}, Lfreemarker/core/_ErrorDescriptionBuilder;->containsSingleInterpolatoinLiteral(Lfreemarker/core/Expression;I)Z

    move-result v4

    if-eqz v4, :cond_32

    return v2

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_35
    return v0
.end method

.method private findBlaming(Lfreemarker/core/TemplateObject;Lfreemarker/core/Expression;I)Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;
    .registers 9

    const/16 v0, 0x32

    const/4 v1, 0x0

    if-le p3, v0, :cond_6

    return-object v1

    .line 194
    :cond_6
    invoke-virtual {p1}, Lfreemarker/core/TemplateObject;->getParameterCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_33

    .line 196
    invoke-virtual {p1, v2}, Lfreemarker/core/TemplateObject;->getParameterValue(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_21

    .line 198
    new-instance p2, Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;

    invoke-direct {p2, v1}, Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;-><init>(Lfreemarker/core/_ErrorDescriptionBuilder$1;)V

    .line 199
    iput-object p1, p2, Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;->blamer:Lfreemarker/core/TemplateObject;

    .line 200
    invoke-virtual {p1, v2}, Lfreemarker/core/TemplateObject;->getParameterRole(I)Lfreemarker/core/ParameterRole;

    move-result-object p1

    iput-object p1, p2, Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;->roleOfblamed:Lfreemarker/core/ParameterRole;

    return-object p2

    .line 202
    :cond_21
    instance-of v4, v3, Lfreemarker/core/TemplateObject;

    if-eqz v4, :cond_30

    .line 203
    check-cast v3, Lfreemarker/core/TemplateObject;

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v3, p2, v4}, Lfreemarker/core/_ErrorDescriptionBuilder;->findBlaming(Lfreemarker/core/TemplateObject;Lfreemarker/core/Expression;I)Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;

    move-result-object v3

    if-eqz v3, :cond_30

    return-object v3

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_33
    return-object v1
.end method

.method private splitToLines(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 274
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-static {p1, v0, v1}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    const-string v0, "\r"

    invoke-static {p1, v0, v1}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    .line 276
    invoke-static {p1, v0}, Lfreemarker/template/utility/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tip(Ljava/lang/Object;)Lfreemarker/core/_ErrorDescriptionBuilder;
    .registers 6

    if-nez p1, :cond_3

    return-object p0

    .line 313
    :cond_3
    iget-object v0, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tip:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 314
    iput-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tip:Ljava/lang/Object;

    goto :goto_2a

    .line 316
    :cond_a
    iget-object v0, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    if-nez v0, :cond_15

    .line 317
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    goto :goto_2a

    .line 319
    :cond_15
    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 321
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_26

    .line 323
    iget-object v3, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 325
    :cond_26
    aput-object p1, v1, v0

    .line 326
    iput-object v1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    :goto_2a
    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 252
    invoke-static {p0, v0}, Lfreemarker/core/_ErrorDescriptionBuilder;->toString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toString(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 263
    :cond_4
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_f

    .line 264
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2a

    .line 265
    :cond_f
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_24

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_18

    goto :goto_24

    :cond_18
    if-eqz p1, :cond_1f

    .line 268
    invoke-static {p0}, Lfreemarker/template/utility/StringUtil;->tryToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2a

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2a

    .line 266
    :cond_24
    :goto_24
    check-cast p0, Ljava/lang/reflect/Member;

    invoke-static {p0}, Lfreemarker/ext/beans/_MethodUtil;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object p0

    :goto_2a
    return-object p0
.end method

.method public static tryToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 256
    invoke-static {p0, v0}, Lfreemarker/core/_ErrorDescriptionBuilder;->toString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blame(Lfreemarker/core/Expression;)Lfreemarker/core/_ErrorDescriptionBuilder;
    .registers 2

    .line 289
    iput-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->blamed:Lfreemarker/core/Expression;

    return-object p0
.end method

.method public showBlamer(Z)Lfreemarker/core/_ErrorDescriptionBuilder;
    .registers 2

    .line 294
    iput-boolean p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->showBlamer:Z

    return-object p0
.end method

.method public template(Lfreemarker/template/Template;)Lfreemarker/core/_ErrorDescriptionBuilder;
    .registers 2

    .line 284
    iput-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->template:Lfreemarker/template/Template;

    return-object p0
.end method

.method public tip(Ljava/lang/String;)Lfreemarker/core/_ErrorDescriptionBuilder;
    .registers 2

    .line 299
    invoke-direct {p0, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;->tip(Ljava/lang/Object;)Lfreemarker/core/_ErrorDescriptionBuilder;

    return-object p0
.end method

.method public varargs tip([Ljava/lang/Object;)Lfreemarker/core/_ErrorDescriptionBuilder;
    .registers 2

    .line 304
    invoke-direct {p0, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;->tip(Ljava/lang/Object;)Lfreemarker/core/_ErrorDescriptionBuilder;

    return-object p0
.end method

.method public varargs tips([Ljava/lang/Object;)Lfreemarker/core/_ErrorDescriptionBuilder;
    .registers 8

    if-eqz p1, :cond_2d

    .line 333
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_2d

    .line 337
    :cond_6
    iget-object v0, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    if-nez v0, :cond_d

    .line 338
    iput-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    goto :goto_2d

    .line 340
    :cond_d
    array-length v0, v0

    .line 341
    array-length v1, p1

    add-int v2, v0, v1

    .line 343
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v0, :cond_20

    .line 345
    iget-object v5, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    aget-object v5, v5, v4

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_20
    :goto_20
    if-ge v3, v1, :cond_2b

    add-int v4, v0, v3

    .line 348
    aget-object v5, p1, v3

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 350
    :cond_2b
    iput-object v2, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    :cond_2d
    :goto_2d
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p0, v0, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;->toString(Lfreemarker/core/TemplateElement;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lfreemarker/core/TemplateElement;Z)Ljava/lang/String;
    .registers 10

    .line 72
    iget-object v0, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->blamed:Lfreemarker/core/Expression;

    if-nez v0, :cond_13

    iget-object v0, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    if-nez v0, :cond_13

    iget-object v0, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tip:Ljava/lang/Object;

    if-nez v0, :cond_13

    iget-object v0, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->descriptionParts:[Ljava/lang/Object;

    if-nez v0, :cond_13

    iget-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->description:Ljava/lang/String;

    return-object p1

    .line 74
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_67

    .line 76
    iget-object v2, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->blamed:Lfreemarker/core/Expression;

    if-eqz v2, :cond_67

    iget-boolean v3, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->showBlamer:Z

    if-eqz v3, :cond_67

    .line 78
    :try_start_25
    invoke-direct {p0, p1, v2, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;->findBlaming(Lfreemarker/core/TemplateObject;Lfreemarker/core/Expression;I)Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 80
    const-string v2, "For "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v2, p1, Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;->blamer:Lfreemarker/core/TemplateObject;

    invoke-virtual {v2}, Lfreemarker/core/TemplateObject;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_40

    goto :goto_42

    :cond_40
    const/16 v3, 0x60

    .line 83
    :goto_42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lfreemarker/core/_ErrorDescriptionBuilder$Blaming;->roleOfblamed:Lfreemarker/core/ParameterRole;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_5f

    goto :goto_67

    :catchall_5f
    move-exception p1

    .line 89
    sget-object v2, Lfreemarker/core/_ErrorDescriptionBuilder;->LOG:Lfreemarker/log/Logger;

    const-string v3, "Error when searching blamer for better error message."

    invoke-virtual {v2, v3, p1}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_67
    :goto_67
    iget-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->description:Ljava/lang/String;

    if-eqz p1, :cond_6f

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 96
    :cond_6f
    iget-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->descriptionParts:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;->appendParts(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 100
    :goto_74
    iget-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->blamed:Lfreemarker/core/Expression;

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eqz p1, :cond_ef

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_80
    if-ltz p1, :cond_92

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_80

    .line 106
    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_a2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    goto :goto_a3

    :cond_a2
    move p1, v1

    :goto_a3
    if-eqz p1, :cond_a8

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a8
    const/16 v4, 0x3a

    if-eq p1, v4, :cond_b1

    .line 111
    const-string p1, "The blamed expression:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_b1
    iget-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->blamed:Lfreemarker/core/Expression;

    invoke-virtual {p1}, Lfreemarker/core/Expression;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;->splitToLines(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v4, v1

    .line 115
    :goto_bc
    array-length v5, p1

    if-ge v4, v5, :cond_d1

    if-nez v4, :cond_c4

    .line 116
    const-string v5, "==> "

    goto :goto_c6

    :cond_c4
    const-string v5, "\n    "

    :goto_c6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    aget-object v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    .line 120
    :cond_d1
    const-string p1, "  ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->blamed:Lfreemarker/core/Expression;

    invoke-virtual {p1}, Lfreemarker/core/Expression;->getStartLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    iget-object p1, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->blamed:Lfreemarker/core/Expression;

    invoke-direct {p0, p1, v1}, Lfreemarker/core/_ErrorDescriptionBuilder;->containsSingleInterpolatoinLiteral(Lfreemarker/core/Expression;I)Z

    move-result p1

    if-eqz p1, :cond_ef

    .line 126
    const-string p1, "It has been noticed that you are using ${...} as the sole content of a quoted string. That does nothing but forcably converts the value inside ${...} to string (as it inserts it into the enclosing string). If that\'s not what you meant, just remove the quotation marks, ${ and }; you don\'t need them. If you indeed wanted to convert to string, use myExpression?string instead."

    goto :goto_f0

    :cond_ef
    const/4 p1, 0x0

    :goto_f0
    if-eqz p2, :cond_167

    .line 135
    iget-object p2, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    if-eqz p2, :cond_f8

    array-length v4, p2

    goto :goto_f9

    :cond_f8
    move v4, v1

    :goto_f9
    iget-object v5, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tip:Ljava/lang/Object;

    if-eqz v5, :cond_ff

    move v6, v3

    goto :goto_100

    :cond_ff
    move v6, v1

    :goto_100
    add-int/2addr v4, v6

    if-eqz p1, :cond_105

    move v6, v3

    goto :goto_106

    :cond_105
    move v6, v1

    :goto_106
    add-int/2addr v4, v6

    if-eqz p2, :cond_10d

    .line 137
    array-length v6, p2

    if-ne v4, v6, :cond_10d

    goto :goto_12c

    .line 140
    :cond_10d
    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_114

    .line 142
    aput-object v5, v4, v1

    goto :goto_115

    :cond_114
    move v3, v1

    :goto_115
    if-eqz p2, :cond_127

    move p2, v1

    .line 144
    :goto_118
    iget-object v5, p0, Lfreemarker/core/_ErrorDescriptionBuilder;->tips:[Ljava/lang/Object;

    array-length v6, v5

    if-ge p2, v6, :cond_127

    add-int/lit8 v6, v3, 0x1

    .line 145
    aget-object v5, v5, p2

    aput-object v5, v4, v3

    add-int/lit8 p2, p2, 0x1

    move v3, v6

    goto :goto_118

    :cond_127
    if-eqz p1, :cond_12b

    .line 148
    aput-object p1, v4, v3

    :cond_12b
    move-object p2, v4

    :goto_12c
    if-eqz p2, :cond_167

    .line 150
    array-length p1, p2

    if-lez p1, :cond_167

    .line 151
    const-string p1, "\n\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :goto_136
    array-length p1, p2

    const-string v3, "----"

    if-ge v1, p1, :cond_160

    if-eqz v1, :cond_140

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    const-string p1, "Tip: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    aget-object p1, p2, v1

    .line 157
    instance-of v3, p1, [Ljava/lang/Object;

    if-nez v3, :cond_156

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_15d

    .line 160
    :cond_156
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lfreemarker/core/_ErrorDescriptionBuilder;->appendParts(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    :goto_15d
    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    .line 163
    :cond_160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
