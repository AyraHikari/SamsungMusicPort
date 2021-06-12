.class public Lorg/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;

.field static final b:Ljava/lang/Object;

.field static final c:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final e:Ljava/lang/Object;

.field static final f:Ljava/lang/Object;

.field static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "y"

    .line 483
    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a:Ljava/lang/Object;

    const-string v0, "M"

    .line 484
    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->b:Ljava/lang/Object;

    const-string v0, "d"

    .line 485
    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->c:Ljava/lang/Object;

    const-string v0, "H"

    .line 486
    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    const-string v0, "m"

    .line 487
    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->e:Ljava/lang/Object;

    const-string v0, "s"

    .line 488
    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->f:Ljava/lang/Object;

    const-string v0, "S"

    .line 489
    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    const-string v0, "HH:mm:ss.SSS"

    .line 83
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 23

    const-string v6, "durationMillis must not be negative"

    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    move-wide/from16 v4, p0

    .line 131
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/Validate;->a(JJJLjava/lang/String;)V

    .line 133
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v0

    .line 141
    sget-object v1, Lorg/apache/commons/lang3/time/DurationFormatUtils;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->a([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x5265c00

    .line 142
    div-long v9, p0, v4

    mul-long v4, v4, v9

    sub-long v4, p0, v4

    move-wide v12, v9

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p0

    move-wide v12, v2

    .line 145
    :goto_0
    sget-object v1, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->a([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v6, 0x36ee80

    .line 146
    div-long v8, v4, v6

    mul-long v6, v6, v8

    sub-long/2addr v4, v6

    move-wide v14, v8

    goto :goto_1

    :cond_1
    move-wide v14, v2

    .line 149
    :goto_1
    sget-object v1, Lorg/apache/commons/lang3/time/DurationFormatUtils;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->a([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/32 v6, 0xea60

    .line 150
    div-long v8, v4, v6

    mul-long v6, v6, v8

    sub-long/2addr v4, v6

    move-wide/from16 v16, v8

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v2

    .line 153
    :goto_2
    sget-object v1, Lorg/apache/commons/lang3/time/DurationFormatUtils;->f:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->a([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x3e8

    .line 154
    div-long v6, v4, v1

    mul-long v1, v1, v6

    sub-long/2addr v4, v1

    move-wide/from16 v20, v4

    move-wide/from16 v18, v6

    goto :goto_3

    :cond_3
    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    :goto_3
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v7, v0

    move/from16 v22, p3

    .line 158
    invoke-static/range {v7 .. v22}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(JZI)Ljava/lang/String;
    .locals 0

    .line 479
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    const/16 p1, 0x30

    .line 480
    invoke-static {p0, p3, p1}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static a([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p13

    move/from16 v3, p15

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    array-length v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_a

    aget-object v9, v0, v7

    .line 431
    invoke-virtual {v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->c()Ljava/lang/Object;

    move-result-object v10

    .line 432
    invoke-virtual {v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->b()I

    move-result v9

    .line 433
    instance-of v11, v10, Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    .line 434
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p5

    move/from16 v16, v5

    move v15, v7

    goto :goto_2

    .line 436
    :cond_0
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a:Ljava/lang/Object;

    if-ne v10, v11, :cond_1

    move-wide/from16 v13, p1

    .line 437
    invoke-static {v13, v14, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p5

    move/from16 v16, v5

    move v15, v7

    :goto_1
    const/4 v8, 0x0

    :goto_2
    move-wide/from16 v5, p11

    goto/16 :goto_6

    :cond_1
    move-wide/from16 v13, p1

    .line 439
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->b:Ljava/lang/Object;

    if-ne v10, v11, :cond_2

    move v15, v7

    move-wide/from16 v6, p3

    .line 440
    invoke-static {v6, v7, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p5

    :goto_3
    move/from16 v16, v5

    goto :goto_1

    :cond_2
    move v15, v7

    move-wide/from16 v6, p3

    .line 442
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->c:Ljava/lang/Object;

    if-ne v10, v11, :cond_3

    move-wide/from16 v12, p5

    .line 443
    invoke-static {v12, v13, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p5

    .line 445
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    if-ne v10, v11, :cond_4

    move/from16 v16, v5

    move-wide/from16 v5, p7

    .line 446
    invoke-static {v5, v6, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move-wide/from16 v5, p11

    :goto_5
    const/4 v8, 0x0

    goto :goto_6

    :cond_4
    move/from16 v16, v5

    move-wide/from16 v5, p7

    .line 448
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->e:Ljava/lang/Object;

    if-ne v10, v7, :cond_5

    move-wide/from16 v5, p9

    .line 449
    invoke-static {v5, v6, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    move-wide/from16 v5, p9

    .line 451
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->f:Ljava/lang/Object;

    if-ne v10, v7, :cond_6

    move-wide/from16 v5, p11

    .line 452
    invoke-static {v5, v6, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    move-wide/from16 v5, p11

    .line 454
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->g:Ljava/lang/Object;

    if-ne v10, v7, :cond_9

    if-eqz v8, :cond_8

    const/4 v7, 0x3

    if-eqz v3, :cond_7

    .line 457
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_7
    const/4 v8, 0x1

    .line 458
    invoke-static {v1, v2, v8, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 460
    :cond_8
    invoke-static {v1, v2, v3, v9}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a(JZI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 v7, v15, 0x1

    move/from16 v5, v16

    goto/16 :goto_0

    .line 466
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .locals 9

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 505
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 506
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-eqz v4, :cond_0

    if-eq v7, v8, :cond_0

    .line 508
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    if-eq v7, v8, :cond_9

    const/16 v8, 0x48

    if-eq v7, v8, :cond_8

    const/16 v8, 0x4d

    if-eq v7, v8, :cond_7

    const/16 v8, 0x53

    if-eq v7, v8, :cond_6

    const/16 v8, 0x64

    if-eq v7, v8, :cond_5

    const/16 v8, 0x6d

    if-eq v7, v8, :cond_4

    const/16 v8, 0x73

    if-eq v7, v8, :cond_3

    const/16 v8, 0x79

    if-eq v7, v8, :cond_2

    if-nez v5, :cond_1

    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    new-instance v8, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v8, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v7, v2

    goto :goto_1

    .line 525
    :cond_2
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->a:Ljava/lang/Object;

    goto :goto_1

    .line 540
    :cond_3
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->f:Ljava/lang/Object;

    goto :goto_1

    .line 537
    :cond_4
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->e:Ljava/lang/Object;

    goto :goto_1

    .line 531
    :cond_5
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->c:Ljava/lang/Object;

    goto :goto_1

    .line 543
    :cond_6
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->g:Ljava/lang/Object;

    goto :goto_1

    .line 528
    :cond_7
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->b:Ljava/lang/Object;

    goto :goto_1

    .line 534
    :cond_8
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_a

    move-object v5, v2

    move-object v7, v5

    const/4 v4, 0x0

    goto :goto_1

    .line 519
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    new-instance v5, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v5, v4}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move-object v7, v2

    move-object v5, v4

    const/4 v4, 0x1

    :goto_1
    if-eqz v7, :cond_c

    if-eqz v6, :cond_b

    .line 554
    invoke-virtual {v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->c()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_b

    .line 555
    invoke-virtual {v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->a()V

    goto :goto_2

    .line 557
    :cond_b
    new-instance v6, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 558
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v5, v2

    :cond_c
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    if-nez v4, :cond_e

    .line 567
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object p0

    .line 565
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched quote in format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
