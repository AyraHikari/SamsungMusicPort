.class public final Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private final c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:F

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "styl"

    .line 46
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a:I

    const-string v0, "tbox"

    .line 47
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "Tx3gDecoder"

    .line 81
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->f()C

    move-result v1

    const v2, 0xfeff

    if-eq v1, v2, :cond_2

    const v2, 0xfffe

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "UTF-16"

    .line 167
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "UTF-8"

    .line 170
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    .line 194
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 196
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 199
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 203
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 206
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 224
    new-instance p2, Landroid/text/style/TypefaceSpan;

    invoke-direct {p2, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Z)V

    .line 176
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v0

    .line 177
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v8

    const/4 v2, 0x2

    .line 178
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 179
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v3

    .line 180
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 181
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p1

    .line 182
    iget v4, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->e:I

    const/4 v7, 0x0

    move-object v2, p2

    move v5, v0

    move v6, v8

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 183
    iget v4, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->f:I

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const v0, 0x3f59999a    # 0.85f

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    const/16 v4, 0x35

    if-ne v2, v4, :cond_4

    .line 89
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v2, 0x18

    .line 90
    aget-byte v4, p1, v2

    iput v4, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->e:I

    const/16 v4, 0x1a

    .line 91
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v2, v4, 0x18

    const/16 v4, 0x1b

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/16 v4, 0x1c

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const/16 v4, 0x1d

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->f:I

    .line 95
    new-instance v2, Ljava/lang/String;

    array-length v4, p1

    const/16 v5, 0x2b

    sub-int/2addr v4, v5

    invoke-direct {v2, p1, v5, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v4, "Serif"

    .line 96
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "serif"

    goto :goto_0

    :cond_1
    const-string v2, "sans-serif"

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->g:Ljava/lang/String;

    const/16 v2, 0x19

    .line 98
    aget-byte v2, p1, v2

    mul-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->i:I

    .line 99
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->d:Z

    .line 100
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->d:Z

    if-eqz v1, :cond_3

    const/16 v0, 0xa

    .line 101
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v1, 0xb

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-float p1, p1

    .line 103
    iget v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->i:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->h:F

    .line 104
    iget p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->h:F

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->h:F

    goto :goto_1

    .line 106
    :cond_3
    iput v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->h:F

    goto :goto_1

    .line 109
    :cond_4
    iput v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->e:I

    const/4 p1, -0x1

    .line 110
    iput p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->f:I

    const-string p1, "sans-serif"

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->g:Ljava/lang/String;

    .line 112
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->d:Z

    .line 113
    iput v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->h:F

    :goto_1
    return-void
.end method

.method private static a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 231
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "Unexpected subtitle format."

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    .line 215
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 120
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BI)V

    .line 121
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 123
    sget-object p1, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;->a:Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    return-object p1

    .line 126
    :cond_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 127
    iget v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/high16 v5, 0xff0000

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 129
    iget v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->f:I

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->g:Ljava/lang/String;

    const-string v2, "sans-serif"

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V

    .line 133
    iget p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->h:F

    move v3, p1

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result p1

    const/16 p3, 0x8

    if-lt p1, p3, :cond_5

    .line 136
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result p1

    .line 137
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p3

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 139
    sget v1, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a:I

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_2

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v0

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Z)V

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_4

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 145
    :cond_2
    sget v1, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->b:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->d:Z

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v0

    if-lt v0, v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-static {v4}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->a(Z)V

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v0

    int-to-float v0, v0

    .line 148
    iget v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const v2, 0x3f733333    # 0.95f

    .line 149
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->a(FFF)F

    move-result v3

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->c:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    goto :goto_0

    .line 153
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    new-instance p3, Lcom/google/android/exoplayer2/text/Cue;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>(Lcom/google/android/exoplayer2/text/Cue;)V

    return-object p1
.end method
