.class public final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.super Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;,
        Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private final c:I

.field private final d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

.field private i:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 156
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;-><init>()V

    .line 157
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 159
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->c:I

    const/16 p1, 0x8

    .line 161
    new-array v0, p1, [Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 163
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    new-instance v3, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 167
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p()V

    return-void
.end method

.method private a(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    const-string v1, "Cea708Decoder"

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    const-string v0, "Cea708Decoder"

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto :goto_0

    :cond_1
    const-string v0, "Cea708Decoder"

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid C0 command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 347
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p()V

    goto :goto_0

    .line 344
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->f()V

    goto :goto_0

    .line 341
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->f:Ljava/util/List;

    :cond_4
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(I)V
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string v0, "Cea708Decoder"

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid C1 command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_0
    add-int/lit16 p1, p1, -0x98

    .line 472
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i(I)V

    .line 474
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:I

    if-eq v0, p1, :cond_9

    .line 475
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:I

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    goto/16 :goto_5

    .line 456
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto/16 :goto_5

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->n()V

    goto/16 :goto_5

    .line 448
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->d()Z

    move-result p1

    if-nez p1, :cond_1

    .line 450
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto/16 :goto_5

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->m()V

    goto/16 :goto_5

    .line 440
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 442
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto/16 :goto_5

    .line 444
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->l()V

    goto/16 :goto_5

    .line 432
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 434
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto/16 :goto_5

    .line 436
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->k()V

    goto/16 :goto_5

    .line 429
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p()V

    goto/16 :goto_5

    .line 423
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto/16 :goto_5

    :goto_0
    :pswitch_7
    if-gt v2, v1, :cond_9

    .line 416
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 417
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x1

    :goto_1
    if-gt p1, v1, :cond_9

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    .line 410
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->e()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(Z)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :pswitch_9
    if-gt v2, v1, :cond_9

    .line 401
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 402
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(Z)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_a
    const/4 p1, 0x1

    :goto_3
    if-gt p1, v1, :cond_9

    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 395
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(Z)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :goto_4
    :pswitch_b
    if-gt v2, v1, :cond_9

    .line 387
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 388
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->c()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_c
    add-int/lit8 p1, p1, -0x80

    .line 380
    iget v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:I

    if-eq v0, p1, :cond_9

    .line 381
    iput p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:I

    .line 382
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    :cond_9
    :goto_5
    :pswitch_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x97
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c(I)V
    .locals 1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 489
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    .line 491
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 493
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private d(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 500
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 502
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 507
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 508
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result p1

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 515
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    :goto_0
    return-void
.end method

.method private f(I)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    return-void
.end method

.method private g(I)V
    .locals 3

    const/16 v0, 0x25

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    const-string v0, "Cea708Decoder"

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid G2 character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 600
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 597
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 594
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 591
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 588
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 585
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 582
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 579
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 576
    :pswitch_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 570
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 567
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 564
    :pswitch_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto/16 :goto_0

    .line 561
    :pswitch_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 558
    :pswitch_e
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 555
    :pswitch_f
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 552
    :pswitch_10
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 549
    :pswitch_11
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 546
    :pswitch_12
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 543
    :pswitch_13
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 531
    :pswitch_14
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 528
    :pswitch_15
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 573
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 537
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    .line 534
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h(I)V
    .locals 3

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 614
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    goto :goto_0

    :cond_0
    const-string v0, "Cea708Decoder"

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid G3 character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(C)V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->j()V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method private i(I)V
    .locals 14

    .line 707
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v0, p1

    .line 711
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 712
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v2

    .line 713
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v3

    .line 714
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v4

    .line 715
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result p1

    .line 717
    iget-object v6, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v6

    .line 718
    iget-object v7, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v7

    .line 720
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v8

    .line 722
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v11

    .line 723
    iget-object v9, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v9

    .line 725
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 726
    iget-object v10, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v10

    .line 728
    iget-object v12, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v12

    .line 730
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v13

    move v5, p1

    .line 732
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(ZZZIZIIIIIII)V

    return-void
.end method

.method private j()V
    .locals 9

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->b:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_0

    const-string v0, "Cea708Decoder"

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v4, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->b:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but current index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (sequence number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v2, v2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "); ignoring packet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v1, v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->c:[B

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v4, v4, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a([BI)V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v1

    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    .line 272
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 273
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const-string v1, "Cea708Decoder"

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceNumber is non-zero ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 284
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->c:I

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a()I

    move-result v1

    if-lez v1, :cond_e

    .line 294
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v1

    const/16 v4, 0x10

    const/16 v5, 0xff

    const/16 v6, 0x9f

    const/16 v7, 0x7f

    const/16 v8, 0x1f

    if-eq v1, v4, :cond_9

    if-gt v1, v8, :cond_5

    .line 297
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->a(I)V

    goto :goto_0

    :cond_5
    if-gt v1, v7, :cond_6

    .line 300
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    if-gt v1, v6, :cond_7

    .line 303
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b(I)V

    goto :goto_1

    :cond_7
    if-gt v1, v5, :cond_8

    .line 306
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->f(I)V

    goto :goto_1

    :cond_8
    const-string v2, "Cea708Decoder"

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid base command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v1

    if-gt v1, v8, :cond_a

    .line 315
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->c(I)V

    goto :goto_0

    :cond_a
    if-gt v1, v7, :cond_b

    .line 317
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->g(I)V

    goto :goto_1

    :cond_b
    if-gt v1, v6, :cond_c

    .line 320
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d(I)V

    goto :goto_0

    :cond_c
    if-gt v1, v5, :cond_d

    .line 322
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h(I)V

    goto :goto_1

    :cond_d
    const-string v2, "Cea708Decoder"

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid extended command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    if-eqz v0, :cond_f

    .line 331
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->f:Ljava/util/List;

    :cond_f
    return-void
.end method

.method private k()V
    .locals 10

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v3

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v4

    .line 627
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v5

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v6

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v7

    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v8

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v9

    .line 634
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIIZZII)V

    return-void
.end method

.method private l()V
    .locals 6

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    .line 642
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v2

    .line 643
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v3

    .line 644
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v4

    .line 645
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIII)I

    move-result v0

    .line 648
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v2

    .line 649
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v3

    .line 650
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v4

    .line 651
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v5

    .line 652
    invoke-static {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIII)I

    move-result v2

    .line 655
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 656
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v3

    .line 657
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v4

    .line 658
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v1

    .line 659
    invoke-static {v3, v4, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b(III)I

    move-result v1

    .line 661
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(III)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 671
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v1

    .line 673
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(II)V

    return-void
.end method

.method private n()V
    .locals 13

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    .line 680
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v2

    .line 681
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v3

    .line 682
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v4

    .line 683
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIII)I

    move-result v6

    .line 685
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    .line 686
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v2

    .line 687
    iget-object v3, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v3

    .line 688
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v4

    .line 689
    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b(III)I

    move-result v7

    .line 691
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v8

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v10

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v11

    .line 697
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v12

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->b:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 702
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a(IIZIIII)V

    return-void
.end method

.method private o()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 739
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->h()Lcom/google/android/exoplayer2/text/cea/Cea708Cue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 744
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->a(J)V

    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BI)V

    .line 200
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_8

    .line 201
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 205
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v2

    int-to-byte v2, v2

    .line 206
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_5

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i()V

    and-int/lit16 p1, v2, 0xc0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v2, 0x3f

    if-nez v0, :cond_4

    const/16 v0, 0x40

    .line 227
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    .line 228
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->c:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    aput-byte v5, p1, v1

    goto :goto_2

    :cond_5
    if-ne v1, v6, :cond_6

    const/4 v3, 0x1

    .line 231
    :cond_6
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 233
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez p1, :cond_7

    const-string p1, "Cea708Decoder"

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 234
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->c:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    aput-byte v2, p1, v1

    .line 239
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->c:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    aput-byte v5, p1, v1

    .line 242
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->d:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;->b:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i()V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->b(Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 177
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->c()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->f:Ljava/util/List;

    .line 179
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->g:Ljava/util/List;

    const/4 v1, 0x0

    .line 180
    iput v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:I

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->d:[Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->i:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->e:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$CueBuilder;

    .line 182
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->p()V

    .line 183
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->h:Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->d()V

    return-void
.end method

.method protected e()Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->g:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected f()Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->g:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic g()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 47
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->g()Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 47
    invoke-super {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->h()Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method
