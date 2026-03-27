.class public Lcom/keephealth/android/util/image/StackBlurUtil;
.super Ljava/lang/Object;
.source "StackBlurUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stackBlur(III[I)V
    .registers 39

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v1, -0x1

    mul-int v5, v0, v1

    add-int v6, v2, v2

    add-int/lit8 v7, v6, 0x1

    .line 19
    new-array v8, v5, [I

    .line 20
    new-array v9, v5, [I

    .line 21
    new-array v5, v5, [I

    .line 23
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [I

    const/4 v11, 0x2

    add-int/2addr v6, v11

    const/4 v12, 0x1

    shr-int/2addr v6, v12

    mul-int/2addr v6, v6

    mul-int/lit16 v13, v6, 0x100

    .line 27
    new-array v14, v13, [I

    const/4 v15, 0x0

    :goto_26
    if-ge v15, v13, :cond_2f

    .line 29
    div-int v17, v15, v6

    aput v17, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_26

    .line 34
    :cond_2f
    new-array v6, v11, [I

    const/4 v13, 0x3

    aput v13, v6, v12

    const/4 v13, 0x0

    aput v7, v6, v13

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    add-int/lit8 v13, v2, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_46
    if-ge v15, v1, :cond_14b

    neg-int v11, v2

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_5b
    const v29, 0xff00

    const/high16 v30, 0xff0000

    if-gt v11, v2, :cond_b4

    const/4 v12, 0x0

    .line 46
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v1, v17, v1

    aget v1, p3, v1

    add-int v16, v11, v2

    .line 47
    aget-object v32, v6, v16

    and-int v16, v1, v30

    shr-int/lit8 v16, v16, 0x10

    .line 48
    aput v16, v32, v12

    and-int v16, v1, v29

    shr-int/lit8 v16, v16, 0x8

    const/16 v29, 0x1

    .line 49
    aput v16, v32, v29

    and-int/lit16 v1, v1, 0xff

    const/16 v19, 0x2

    .line 50
    aput v1, v32, v19

    .line 51
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v1, v13, v1

    .line 52
    aget v30, v32, v12

    mul-int v12, v30, v1

    add-int v20, v20, v12

    .line 53
    aget v12, v32, v29

    mul-int v29, v12, v1

    add-int v21, v21, v29

    .line 54
    aget v29, v32, v19

    mul-int v1, v1, v29

    add-int v22, v22, v1

    if-lez v11, :cond_a8

    add-int v26, v26, v30

    add-int v27, v27, v12

    add-int v28, v28, v29

    goto :goto_ae

    :cond_a8
    add-int v23, v23, v30

    add-int v24, v24, v12

    add-int v25, v25, v29

    :goto_ae
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    const/4 v12, 0x1

    goto :goto_5b

    :cond_b4
    move v11, v2

    const/4 v1, 0x0

    :goto_b6
    if-ge v1, v0, :cond_13f

    .line 69
    aget v12, v14, v20

    aput v12, v8, v17

    .line 70
    aget v12, v14, v21

    aput v12, v9, v17

    .line 71
    aget v12, v14, v22

    aput v12, v5, v17

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    sub-int v22, v22, v25

    sub-int v12, v11, v2

    add-int/2addr v12, v7

    .line 78
    rem-int/2addr v12, v7

    aget-object v12, v6, v12

    const/16 v16, 0x0

    .line 80
    aget v32, v12, v16

    sub-int v23, v23, v32

    const/16 v31, 0x1

    .line 81
    aget v32, v12, v31

    sub-int v24, v24, v32

    const/16 v19, 0x2

    .line 82
    aget v32, v12, v19

    sub-int v25, v25, v32

    if-nez v15, :cond_f1

    add-int v32, v1, v2

    move-object/from16 v33, v14

    add-int/lit8 v14, v32, 0x1

    .line 85
    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v10, v1

    goto :goto_f3

    :cond_f1
    move-object/from16 v33, v14

    .line 87
    :goto_f3
    aget v14, v10, v1

    add-int v14, v18, v14

    aget v14, p3, v14

    and-int v32, v14, v30

    shr-int/lit8 v32, v32, 0x10

    const/16 v16, 0x0

    .line 89
    aput v32, v12, v16

    and-int v34, v14, v29

    shr-int/lit8 v34, v34, 0x8

    const/16 v31, 0x1

    .line 90
    aput v34, v12, v31

    and-int/lit16 v14, v14, 0xff

    const/16 v19, 0x2

    .line 91
    aput v14, v12, v19

    add-int v26, v26, v32

    add-int v27, v27, v34

    add-int v28, v28, v14

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int/lit8 v11, v11, 0x1

    .line 101
    rem-int/2addr v11, v7

    .line 102
    rem-int v12, v11, v7

    aget-object v12, v6, v12

    const/4 v14, 0x0

    .line 104
    aget v32, v12, v14

    add-int v23, v23, v32

    const/4 v14, 0x1

    .line 105
    aget v34, v12, v14

    add-int v24, v24, v34

    const/4 v14, 0x2

    .line 106
    aget v12, v12, v14

    add-int v25, v25, v12

    sub-int v26, v26, v32

    sub-int v27, v27, v34

    sub-int v28, v28, v12

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v33

    goto/16 :goto_b6

    :cond_13f
    move-object/from16 v33, v14

    add-int v18, v18, v0

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_46

    :cond_14b
    move-object/from16 v33, v14

    const/4 v1, 0x0

    :goto_14e
    if-ge v1, v0, :cond_267

    neg-int v3, v2

    mul-int v11, v3, v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_162
    if-gt v3, v2, :cond_1c6

    move-object/from16 v24, v10

    const/4 v10, 0x0

    .line 120
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v25, v16, v1

    add-int v16, v3, v2

    .line 122
    aget-object v26, v6, v16

    .line 124
    aget v16, v8, v25

    aput v16, v26, v10

    .line 125
    aget v10, v9, v25

    const/16 v27, 0x1

    aput v10, v26, v27

    .line 126
    aget v10, v5, v25

    const/16 v19, 0x2

    aput v10, v26, v19

    .line 128
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    sub-int v10, v13, v10

    .line 130
    aget v27, v8, v25

    mul-int v27, v27, v10

    add-int v12, v12, v27

    .line 131
    aget v27, v9, v25

    mul-int v27, v27, v10

    add-int v14, v14, v27

    .line 132
    aget v25, v5, v25

    mul-int v25, v25, v10

    add-int v15, v15, v25

    if-lez v3, :cond_1ad

    const/4 v10, 0x0

    .line 135
    aget v16, v26, v10

    add-int v21, v21, v16

    const/16 v25, 0x1

    .line 136
    aget v16, v26, v25

    add-int v22, v22, v16

    const/16 v19, 0x2

    .line 137
    aget v16, v26, v19

    add-int v23, v23, v16

    goto :goto_1be

    :cond_1ad
    const/4 v10, 0x0

    const/16 v19, 0x2

    const/16 v25, 0x1

    .line 139
    aget v27, v26, v10

    add-int v17, v17, v27

    .line 140
    aget v10, v26, v25

    add-int v18, v18, v10

    .line 141
    aget v10, v26, v19

    add-int v20, v20, v10

    :goto_1be
    if-ge v3, v4, :cond_1c1

    add-int/2addr v11, v0

    :cond_1c1
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v24

    goto :goto_162

    :cond_1c6
    move-object/from16 v24, v10

    move/from16 v10, p1

    move v11, v1

    move/from16 v25, v2

    const/4 v3, 0x0

    :goto_1ce
    if-ge v3, v10, :cond_259

    const/high16 v26, -0x1000000

    .line 152
    aget v27, p3, v11

    and-int v26, v27, v26

    aget v27, v33, v12

    shl-int/lit8 v27, v27, 0x10

    or-int v26, v26, v27

    aget v27, v33, v14

    shl-int/lit8 v27, v27, 0x8

    or-int v26, v26, v27

    aget v27, v33, v15

    or-int v26, v26, v27

    aput v26, p3, v11

    sub-int v12, v12, v17

    sub-int v14, v14, v18

    sub-int v15, v15, v20

    sub-int v26, v25, v2

    add-int v26, v26, v7

    .line 159
    rem-int v26, v26, v7

    aget-object v26, v6, v26

    const/16 v16, 0x0

    .line 161
    aget v27, v26, v16

    sub-int v17, v17, v27

    const/16 v27, 0x1

    .line 162
    aget v28, v26, v27

    sub-int v18, v18, v28

    const/16 v19, 0x2

    .line 163
    aget v27, v26, v19

    sub-int v20, v20, v27

    if-nez v1, :cond_213

    add-int v2, v3, v13

    .line 166
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, v0

    aput v2, v24, v3

    .line 168
    :cond_213
    aget v2, v24, v3

    add-int/2addr v2, v1

    .line 170
    aget v27, v8, v2

    const/16 v16, 0x0

    aput v27, v26, v16

    .line 171
    aget v28, v9, v2

    const/16 v29, 0x1

    aput v28, v26, v29

    .line 172
    aget v2, v5, v2

    const/16 v19, 0x2

    aput v2, v26, v19

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int v23, v23, v2

    add-int v12, v12, v21

    add-int v14, v14, v22

    add-int v15, v15, v23

    add-int/lit8 v25, v25, 0x1

    .line 182
    rem-int v25, v25, v7

    .line 183
    aget-object v2, v6, v25

    const/16 v16, 0x0

    .line 185
    aget v26, v2, v16

    add-int v17, v17, v26

    const/16 v27, 0x1

    .line 186
    aget v28, v2, v27

    add-int v18, v18, v28

    const/16 v19, 0x2

    .line 187
    aget v2, v2, v19

    add-int v20, v20, v2

    sub-int v21, v21, v26

    sub-int v22, v22, v28

    sub-int v23, v23, v2

    add-int/2addr v11, v0

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p2

    goto/16 :goto_1ce

    :cond_259
    const/16 v16, 0x0

    const/16 v19, 0x2

    const/16 v27, 0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p2

    move-object/from16 v10, v24

    goto/16 :goto_14e

    :cond_267
    return-void
.end method
