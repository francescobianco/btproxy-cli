.class public abstract Lfreemarker/core/TemplateElement;
.super Lfreemarker/core/TemplateObject;
.source "TemplateElement.java"

# interfaces
.implements Ljavax/swing/tree/TreeNode;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INITIAL_REGULATED_CHILD_BUFFER_CAPACITY:I = 0x6


# instance fields
.field private childBuffer:[Lfreemarker/core/TemplateElement;

.field private childCount:I

.field private index:I

.field private parent:Lfreemarker/core/TemplateElement;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lfreemarker/core/TemplateObject;-><init>()V

    return-void
.end method

.method static getChildrenCanonicalForm([Lfreemarker/core/TemplateElement;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    .line 112
    const-string p0, ""

    return-object p0

    .line 114
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    if-nez v3, :cond_13

    goto :goto_1d

    .line 119
    :cond_13
    invoke-virtual {v3}, Lfreemarker/core/TemplateElement;->getCanonicalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 121
    :cond_1d
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFirstChild()Lfreemarker/core/TemplateElement;
    .registers 3

    .line 459
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_b
    return-object v0
.end method

.method private getFirstLeaf()Lfreemarker/core/TemplateElement;
    .registers 3

    move-object v0, p0

    .line 469
    :goto_1
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_14

    instance-of v1, v0, Lfreemarker/core/Macro;

    if-nez v1, :cond_14

    instance-of v1, v0, Lfreemarker/core/BlockAssignment;

    if-nez v1, :cond_14

    .line 471
    invoke-direct {v0}, Lfreemarker/core/TemplateElement;->getFirstChild()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto :goto_1

    :cond_14
    return-object v0
.end method

.method private getLastChild()Lfreemarker/core/TemplateElement;
    .registers 3

    .line 463
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    .line 464
    :cond_6
    iget-object v1, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    :goto_c
    return-object v0
.end method

.method private getLastLeaf()Lfreemarker/core/TemplateElement;
    .registers 3

    move-object v0, p0

    .line 478
    :goto_1
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_14

    instance-of v1, v0, Lfreemarker/core/Macro;

    if-nez v1, :cond_14

    instance-of v1, v0, Lfreemarker/core/BlockAssignment;

    if-nez v1, :cond_14

    .line 480
    invoke-direct {v0}, Lfreemarker/core/TemplateElement;->getLastChild()Lfreemarker/core/TemplateElement;

    move-result-object v0

    goto :goto_1

    :cond_14
    return-object v0
.end method


# virtual methods
.method abstract accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final addChild(ILfreemarker/core/TemplateElement;)V
    .registers 8

    .line 289
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    .line 291
    iget-object v1, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    const/4 v2, 0x1

    if-nez v1, :cond_d

    const/4 v1, 0x6

    .line 293
    new-array v1, v1, [Lfreemarker/core/TemplateElement;

    .line 294
    iput-object v1, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    goto :goto_1b

    .line 295
    :cond_d
    array-length v3, v1

    if-ne v0, v3, :cond_1b

    if-eqz v0, :cond_15

    mul-int/lit8 v1, v0, 0x2

    goto :goto_16

    :cond_15
    move v1, v2

    .line 296
    :goto_16
    invoke-virtual {p0, v1}, Lfreemarker/core/TemplateElement;->setChildBufferCapacity(I)V

    .line 297
    iget-object v1, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    :cond_1b
    :goto_1b
    move v3, v0

    :goto_1c
    if-le v3, p1, :cond_29

    add-int/lit8 v4, v3, -0x1

    .line 302
    aget-object v4, v1, v4

    .line 303
    iput v3, v4, Lfreemarker/core/TemplateElement;->index:I

    .line 304
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 306
    :cond_29
    iput p1, p2, Lfreemarker/core/TemplateElement;->index:I

    .line 307
    iput-object p0, p2, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    .line 308
    aput-object p2, v1, p1

    add-int/2addr v0, v2

    .line 309
    iput v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    return-void
.end method

.method final addChild(Lfreemarker/core/TemplateElement;)V
    .registers 3

    .line 282
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    invoke-virtual {p0, v0, p1}, Lfreemarker/core/TemplateElement;->addChild(ILfreemarker/core/TemplateElement;)V

    return-void
.end method

.method public children()Ljava/util/Enumeration;
    .registers 4

    .line 219
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    if-eqz v0, :cond_e

    new-instance v0, Lfreemarker/core/_ArrayEnumeration;

    iget-object v1, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    iget v2, p0, Lfreemarker/core/TemplateElement;->childCount:I

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_ArrayEnumeration;-><init>([Ljava/lang/Object;I)V

    goto :goto_14

    :cond_e
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 221
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method protected abstract dump(Z)Ljava/lang/String;
.end method

.method public getAllowsChildren()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-virtual {p0}, Lfreemarker/core/TemplateElement;->isLeaf()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getCanonicalForm()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateElement;->dump(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getChild(I)Lfreemarker/core/TemplateElement;
    .registers 3

    .line 313
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getChildAt(I)Ljavax/swing/tree/TreeNode;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    if-eqz v0, :cond_2a

    .line 234
    :try_start_4
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aget-object p1, v0, p1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    .line 237
    :catch_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", Size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lfreemarker/core/TemplateElement;->childCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Template element has no children"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final getChildBuffer()[Lfreemarker/core/TemplateElement;
    .registers 2

    .line 321
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .line 211
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    return v0
.end method

.method public getChildNodes()Lfreemarker/template/TemplateSequenceModel;
    .registers 4

    .line 166
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 167
    new-instance v0, Lfreemarker/template/SimpleSequence;

    iget v2, p0, Lfreemarker/core/TemplateElement;->childCount:I

    invoke-direct {v0, v2}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    .line 168
    :goto_c
    iget v2, p0, Lfreemarker/core/TemplateElement;->childCount:I

    if-ge v1, v2, :cond_1a

    .line 169
    iget-object v2, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    return-object v0

    .line 173
    :cond_1b
    new-instance v0, Lfreemarker/template/SimpleSequence;

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    return-object v0
.end method

.method final getChildrenCanonicalForm()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    invoke-static {v0}, Lfreemarker/core/TemplateElement;->getChildrenCanonicalForm([Lfreemarker/core/TemplateElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lfreemarker/core/TemplateElement;->dump(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getIndex()I
    .registers 2

    .line 342
    iget v0, p0, Lfreemarker/core/TemplateElement;->index:I

    return v0
.end method

.method public getIndex(Ljavax/swing/tree/TreeNode;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 202
    :goto_1
    iget v1, p0, Lfreemarker/core/TemplateElement;->childCount:I

    if-ge v0, v1, :cond_13

    .line 203
    iget-object v1, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 3

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeNamespace()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType()Ljava/lang/String;
    .registers 2

    .line 162
    const-string v0, "element"

    return-object v0
.end method

.method public getParent()Ljavax/swing/tree/TreeNode;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    return-object v0
.end method

.method final getParentElement()Lfreemarker/core/TemplateElement;
    .registers 2

    .line 266
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    return-object v0
.end method

.method public getParentNode()Lfreemarker/template/TemplateNodeModel;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method heedsOpeningWhitespace()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method heedsTrailingWhitespace()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isChildrenOutputCacheable()Z
    .registers 5

    .line 494
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_14

    .line 496
    iget-object v3, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lfreemarker/core/TemplateElement;->isOutputCacheable()Z

    move-result v3

    if-nez v3, :cond_11

    return v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method isIgnorable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isLeaf()Z
    .registers 2

    .line 186
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method abstract isNestedBlockRepeater()Z
.end method

.method isOutputCacheable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isShownInStackTrace()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method nextSibling()Lfreemarker/core/TemplateElement;
    .registers 6

    .line 452
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 455
    :cond_6
    iget v2, p0, Lfreemarker/core/TemplateElement;->index:I

    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lfreemarker/core/TemplateElement;->childCount:I

    if-ge v3, v4, :cond_14

    iget-object v0, v0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v0, v2

    :cond_14
    return-object v1
.end method

.method nextTerminalNode()Lfreemarker/core/TemplateElement;
    .registers 2

    .line 435
    invoke-virtual {p0}, Lfreemarker/core/TemplateElement;->nextSibling()Lfreemarker/core/TemplateElement;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 437
    invoke-direct {v0}, Lfreemarker/core/TemplateElement;->getFirstLeaf()Lfreemarker/core/TemplateElement;

    move-result-object v0

    return-object v0

    .line 438
    :cond_b
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    if-eqz v0, :cond_14

    .line 439
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->nextTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method postParseCleanup(Z)Lfreemarker/core/TemplateElement;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 366
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    if-eqz v0, :cond_65

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1b

    .line 369
    iget-object v3, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aget-object v3, v3, v2

    .line 383
    invoke-virtual {v3, p1}, Lfreemarker/core/TemplateElement;->postParseCleanup(Z)Lfreemarker/core/TemplateElement;

    move-result-object v3

    .line 384
    iget-object v4, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aput-object v3, v4, v2

    .line 385
    iput-object p0, v3, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    .line 386
    iput v2, v3, Lfreemarker/core/TemplateElement;->index:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    move v2, v1

    :goto_1c
    const/4 v3, 0x0

    if-ge v2, v0, :cond_45

    .line 389
    iget-object v4, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aget-object v4, v4, v2

    .line 390
    invoke-virtual {v4, p1}, Lfreemarker/core/TemplateElement;->isIgnorable(Z)Z

    move-result v4

    if-eqz v4, :cond_42

    add-int/lit8 v0, v0, -0x1

    move v4, v2

    :goto_2c
    if-ge v4, v0, :cond_3a

    .line 394
    iget-object v5, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    add-int/lit8 v6, v4, 0x1

    aget-object v7, v5, v6

    .line 395
    aput-object v7, v5, v4

    .line 396
    iput v4, v7, Lfreemarker/core/TemplateElement;->index:I

    move v4, v6

    goto :goto_2c

    .line 398
    :cond_3a
    iget-object v4, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aput-object v3, v4, v0

    .line 399
    iput v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    add-int/lit8 v2, v2, -0x1

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_45
    if-nez v0, :cond_4a

    .line 404
    iput-object v3, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    goto :goto_65

    .line 405
    :cond_4a
    iget-object p1, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    array-length v2, p1

    if-ge v0, v2, :cond_65

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    if-gt v0, p1, :cond_65

    .line 407
    new-array p1, v0, [Lfreemarker/core/TemplateElement;

    :goto_58
    if-ge v1, v0, :cond_63

    .line 409
    iget-object v2, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 411
    :cond_63
    iput-object p1, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    :cond_65
    :goto_65
    return-object p0
.end method

.method prevTerminalNode()Lfreemarker/core/TemplateElement;
    .registers 2

    .line 425
    invoke-virtual {p0}, Lfreemarker/core/TemplateElement;->previousSibling()Lfreemarker/core/TemplateElement;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 427
    invoke-direct {v0}, Lfreemarker/core/TemplateElement;->getLastLeaf()Lfreemarker/core/TemplateElement;

    move-result-object v0

    return-object v0

    .line 428
    :cond_b
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    if-eqz v0, :cond_14

    .line 429
    invoke-virtual {v0}, Lfreemarker/core/TemplateElement;->prevTerminalNode()Lfreemarker/core/TemplateElement;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method previousSibling()Lfreemarker/core/TemplateElement;
    .registers 4

    .line 445
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 448
    :cond_6
    iget v2, p0, Lfreemarker/core/TemplateElement;->index:I

    if-lez v2, :cond_10

    iget-object v0, v0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    :cond_10
    return-object v1
.end method

.method public setChildAt(ILfreemarker/core/TemplateElement;)V
    .registers 5

    .line 242
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    if-ge p1, v0, :cond_f

    if-ltz p1, :cond_f

    .line 243
    iget-object v0, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aput-object p2, v0, p1

    .line 244
    iput p1, p2, Lfreemarker/core/TemplateElement;->index:I

    .line 245
    iput-object p0, p2, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    return-void

    .line 247
    :cond_f
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final setChildBufferCapacity(I)V
    .registers 5

    .line 270
    iget v0, p0, Lfreemarker/core/TemplateElement;->childCount:I

    .line 271
    new-array p1, p1, [Lfreemarker/core/TemplateElement;

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_10

    .line 273
    iget-object v2, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 275
    :cond_10
    iput-object p1, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    return-void
.end method

.method final setChildren(Lfreemarker/core/TemplateElements;)V
    .registers 5

    .line 330
    invoke-virtual {p1}, Lfreemarker/core/TemplateElements;->getBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Lfreemarker/core/TemplateElements;->getCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_14

    .line 333
    aget-object v2, v0, v1

    .line 334
    iput v1, v2, Lfreemarker/core/TemplateElement;->index:I

    .line 335
    iput-object p0, v2, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 337
    :cond_14
    iput-object v0, p0, Lfreemarker/core/TemplateElement;->childBuffer:[Lfreemarker/core/TemplateElement;

    .line 338
    iput p1, p0, Lfreemarker/core/TemplateElement;->childCount:I

    return-void
.end method

.method final setFieldsForRootElement()V
    .registers 2

    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lfreemarker/core/TemplateElement;->index:I

    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lfreemarker/core/TemplateElement;->parent:Lfreemarker/core/TemplateElement;

    return-void
.end method
