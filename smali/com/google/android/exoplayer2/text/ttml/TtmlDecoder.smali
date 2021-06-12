.class public final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;


# instance fields
.field private final f:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 73
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->b:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->c:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->d:Ljava/util/regex/Pattern;

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->e:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "TtmlDecoder"

    .line 86
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 88
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    .line 538
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 539
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long v8, v8, v10

    long-to-double v8, v8

    .line 540
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 541
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long v10, v10, v12

    long-to-double v10, v10

    add-double/2addr v8, v10

    .line 542
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 543
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v8, v6

    .line 544
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_0

    .line 545
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_0

    :cond_0
    move-wide v10, v5

    :goto_0
    const/4 p0, 0x0

    add-double/2addr v8, v10

    .line 546
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 548
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-float p0, v10

    iget v1, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->a:F

    div-float/2addr p0, v1

    float-to-double v10, p0

    goto :goto_1

    :cond_1
    move-wide v10, v5

    :goto_1
    const/4 p0, 0x0

    add-double/2addr v8, v10

    const/4 p0, 0x6

    .line 549
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 551
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->b:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->a:F

    float-to-double p0, p0

    div-double v5, v0, p0

    :cond_2
    const/4 p0, 0x0

    add-double/2addr v8, v5

    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    .line 556
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 558
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 559
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 560
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 561
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v11, 0x66

    if-eq v1, v11, :cond_7

    const/16 v5, 0x68

    if-eq v1, v5, :cond_6

    const/16 v5, 0x6d

    if-eq v1, v5, :cond_5

    const/16 v5, 0xda6

    if-eq v1, v5, :cond_4

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    :pswitch_1
    const-string v1, "s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v4, 0x2

    goto :goto_3

    :cond_4
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v4, 0x3

    goto :goto_3

    :cond_5
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v4, 0x4

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v4, -0x1

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 578
    :pswitch_2
    iget p0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->c:I

    int-to-double p0, p0

    div-double/2addr v9, p0

    goto :goto_4

    .line 575
    :pswitch_3
    iget p0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->a:F

    float-to-double p0, p0

    div-double/2addr v9, p0

    goto :goto_4

    :pswitch_4
    const-wide p0, 0x408f400000000000L    # 1000.0

    div-double/2addr v9, p0

    goto :goto_4

    :pswitch_5
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    mul-double v9, v9, p0

    goto :goto_4

    :pswitch_6
    const-wide p0, 0x40ac200000000000L    # 3600.0

    mul-double v9, v9, p0

    :goto_4
    :pswitch_7
    mul-double v9, v9, v2

    double-to-long p0, v9

    return-wide p0

    .line 583
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed time expression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    .line 165
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "http://www.w3.org/ns/ttml#parameter"

    const-string v3, "frameRateMultiplier"

    .line 171
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v1, " "

    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 174
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 177
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    .line 178
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    goto :goto_1

    .line 175
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_2
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->e:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v2, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->b:I

    const-string v3, "http://www.w3.org/ns/ttml#parameter"

    const-string v4, "subFrameRate"

    .line 183
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 188
    :cond_3
    sget-object v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->e:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v3, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->c:I

    const-string v4, "http://www.w3.org/ns/ttml#parameter"

    const-string v5, "tickRate"

    .line 189
    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 193
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v0, v0

    mul-float v0, v0, v1

    invoke-direct {p1, v0, v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, ""

    .line 415
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    const/4 v6, 0x0

    .line 416
    invoke-direct {v0, v1, v6}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v12

    move-object/from16 v17, v6

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    move-object v6, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    .line 418
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 419
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 420
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "style"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_1
    const-string v9, "begin"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_2
    const-string v9, "end"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_3
    const-string v9, "dur"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    goto :goto_2

    :sswitch_4
    const-string v9, "region"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v7, -0x1

    :goto_2
    packed-switch v7, :pswitch_data_0

    move-object/from16 v7, p3

    goto :goto_3

    :pswitch_0
    move-object/from16 v7, p3

    .line 438
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v8

    goto :goto_3

    :pswitch_1
    move-object/from16 v7, p3

    .line 432
    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 433
    array-length v9, v8

    if-lez v9, :cond_1

    move-object/from16 v17, v8

    goto :goto_3

    :pswitch_2
    move-object/from16 v7, p3

    .line 428
    invoke-static {v8, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v8

    move-wide v15, v8

    goto :goto_3

    :pswitch_3
    move-object/from16 v7, p3

    .line 425
    invoke-static {v8, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v8

    move-wide v13, v8

    goto :goto_3

    :pswitch_4
    move-object/from16 v7, p3

    .line 422
    invoke-static {v8, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v8

    move-wide v10, v8

    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    .line 449
    iget-wide v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->d:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v7

    if-eqz v3, :cond_5

    cmp-long v3, v10, v7

    if-eqz v3, :cond_3

    .line 451
    iget-wide v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->d:J

    add-long/2addr v10, v3

    :cond_3
    cmp-long v3, v13, v7

    if-eqz v3, :cond_5

    .line 454
    iget-wide v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->d:J

    add-long/2addr v13, v3

    goto :goto_4

    :cond_4
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    :cond_5
    :goto_4
    cmp-long v3, v13, v7

    if-nez v3, :cond_7

    cmp-long v3, v15, v7

    if-eqz v3, :cond_6

    add-long/2addr v15, v10

    move-wide v13, v15

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_7

    .line 461
    iget-wide v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->e:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_7

    .line 463
    iget-wide v2, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->e:J

    move-wide v13, v2

    .line 466
    :cond_7
    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-wide v8, v10

    move-wide v10, v13

    move-object/from16 v13, v17

    move-object v14, v6

    invoke-static/range {v7 .. v14}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->a(Ljava/lang/String;JJLcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_4
        0x18601 -> :sswitch_3
        0x188db -> :sswitch_2
        0x59478a9 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .locals 0

    if-nez p1, :cond_0

    .line 404
    new-instance p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    :cond_0
    return-object p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .locals 11

    .line 316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_8

    .line 318
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_4
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_5
    const-string v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_6
    const-string v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_7
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_8
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_7

    .line 380
    :pswitch_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x57195dd5

    if-eq v4, v5, :cond_4

    const v5, -0x3d363934

    if-eq v4, v5, :cond_3

    const v5, 0x36723ff0

    if-eq v4, v5, :cond_2

    const v5, 0x641ec051

    if-eq v4, v5, :cond_1

    goto :goto_3

    :cond_1
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v7, 0x0

    goto :goto_4

    :cond_2
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_4
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v7, 0x3

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v7, -0x1

    :goto_4
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_7

    .line 391
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->b(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 388
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->b(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 385
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 382
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 361
    :pswitch_5
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    goto :goto_5

    :sswitch_9
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :sswitch_a
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x2

    goto :goto_6

    :sswitch_b
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    goto :goto_6

    :sswitch_c
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x3

    goto :goto_6

    :sswitch_d
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v6, -0x1

    :goto_6
    packed-switch v6, :pswitch_data_2

    goto/16 :goto_7

    .line 375
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 372
    :pswitch_7
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 369
    :pswitch_8
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 366
    :pswitch_9
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 363
    :pswitch_a
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 357
    :pswitch_b
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    const-string v4, "italic"

    .line 358
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 357
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->d(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 353
    :pswitch_c
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    const-string v4, "bold"

    .line 354
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 353
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->c(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_7

    .line 346
    :pswitch_d
    :try_start_0
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    :try_start_1
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v4

    goto/16 :goto_7

    :catch_0
    move-object v2, v4

    :catch_1
    const-string v4, "TtmlDecoder"

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing fontSize value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 342
    :pswitch_e
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto :goto_7

    .line 334
    :pswitch_f
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    .line 336
    :try_start_2
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/ColorParser;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    const-string v4, "TtmlDecoder"

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing color value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 326
    :pswitch_10
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    .line 328
    :try_start_3
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/ColorParser;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->b(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    const-string v4, "TtmlDecoder"

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing background value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_11
    const-string v4, "style"

    .line 321
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 322
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    :cond_7
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_d
        0x188db -> :sswitch_c
        0x32a007 -> :sswitch_b
        0x677c21c -> :sswitch_a
        0x68ac462 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 200
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "style"

    .line 201
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "style"

    .line 202
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 206
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "region"

    .line 212
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->a:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    const-string v0, "head"

    .line 218
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    const-string v0, "\\s+"

    .line 489
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 491
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 492
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_6

    .line 494
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->c:Ljava/util/regex/Pattern;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "TtmlDecoder"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 495
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x3

    .line 503
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    .line 504
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x25

    if-eq v5, v6, :cond_3

    const/16 v6, 0xca8

    if-eq v5, v6, :cond_2

    const/16 v6, 0xe08

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "px"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const-string v5, "em"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x2

    :cond_4
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 515
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid unit for fontSize: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 512
    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->c(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_2

    .line 509
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->c(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_2

    .line 506
    :pswitch_2
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->c(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 517
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->a(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    return-void

    .line 519
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid expression for fontSize: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 498
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number of entries for fontSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "\\s+"

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    .locals 11

    const-string v0, "id"

    .line 230
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "origin"

    .line 237
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 239
    sget-object v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    .line 242
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/4 v7, 0x2

    .line 243
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    div-float/2addr v3, v6

    const-string v8, "extent"

    .line 264
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 266
    sget-object v9, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 267
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 269
    :try_start_1
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v6

    .line 270
    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    div-float/2addr v8, v6

    const-string v0, "displayAlign"

    .line 290
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 293
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v10, -0x514d33ab

    if-eq v6, v10, :cond_2

    const v10, 0x58705dc

    if-eq v6, v10, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "after"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "center"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-float/2addr v3, v8

    move v4, v3

    const/4 v6, 0x2

    goto :goto_2

    :pswitch_1
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v8, p1

    add-float/2addr v3, v8

    move v4, v3

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v3

    const/4 v6, 0x0

    .line 308
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/4 v0, 0x0

    move-object v1, p1

    move v3, v5

    move v5, v0

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIF)V

    return-object p1

    :catch_0
    const-string p1, "TtmlDecoder"

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring region with malformed extent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    const-string p1, "TtmlDecoder"

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring region with unsupported extent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6
    const-string p1, "TtmlDecoder"

    const-string v1, "Ignoring region without an extent"

    .line 280
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    const-string p1, "TtmlDecoder"

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring region with malformed origin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_7
    const-string p1, "TtmlDecoder"

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring region with unsupported origin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_8
    const-string p1, "TtmlDecoder"

    const-string v1, "Ignoring region without an origin"

    .line 253
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tt"

    .line 470
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    .line 471
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    .line 472
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    .line 473
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    .line 474
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "span"

    .line 475
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    .line 476
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    .line 477
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "styling"

    .line 478
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    .line 479
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    .line 481
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smpte:image"

    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smpte:data"

    .line 483
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smpte:information"

    .line 484
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->b([BIZ)Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 99
    :try_start_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->f:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {p3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p3

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    .line 102
    new-instance v3, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 104
    invoke-interface {p3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 106
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 108
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    .line 109
    sget-object v2, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->e:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    :goto_0
    const/4 v5, 0x1

    if-eq p2, v5, :cond_9

    .line 111
    invoke-virtual {p1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v3, :cond_6

    .line 113
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-ne p2, v7, :cond_3

    const-string p2, "tt"

    .line 115
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v2

    .line 118
    :cond_0
    invoke-static {v8}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "TtmlDecoder"

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unsupported tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "head"

    .line 121
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 122
    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 125
    :cond_2
    :try_start_1
    invoke-direct {p0, p3, v5, v1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    if-eqz v5, :cond_8

    .line 128
    invoke-virtual {v5, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    const-string v5, "TtmlDecoder"

    const-string v6, "Suppressing parser error"

    .line 131
    invoke-static {v5, v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x4

    if-ne p2, v7, :cond_4

    .line 137
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->a(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V

    goto :goto_1

    :cond_4
    if-ne p2, v6, :cond_8

    .line 139
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v5, "tt"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 140
    new-instance v4, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    invoke-direct {v4, p2, v0, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V

    .line 142
    :cond_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    :cond_6
    if-ne p2, v7, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-ne p2, v6, :cond_8

    add-int/lit8 v3, v3, -0x1

    .line 151
    :cond_8
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 152
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_9
    return-object v4

    :catch_1
    move-exception p1

    .line 158
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected error when reading input."

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 156
    new-instance p2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p3, "Unable to decode source"

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
