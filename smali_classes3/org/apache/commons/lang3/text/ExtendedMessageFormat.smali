.class public Lorg/apache/commons/lang3/text/ExtendedMessageFormat;
.super Ljava/text/MessageFormat;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DUMMY_PATTERN:Ljava/lang/String; = ""

.field private static final END_FE:C = '}'

.field private static final HASH_SEED:I = 0x1f

.field private static final QUOTE:C = '\''

.field private static final START_FE:C = '{'

.field private static final START_FMT:C = ','

.field private static final serialVersionUID:J = -0x20c7ae6efb1e381fL


# instance fields
.field private final registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/commons/lang3/text/FormatFactory;",
            ">;"
        }
    .end annotation
.end field

.field private toPattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/commons/lang3/text/FormatFactory;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 123
    invoke-direct {p0, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 125
    iput-object p3, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lorg/apache/commons/lang3/text/FormatFactory;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    return-void
.end method

.method private appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x27

    if-eqz p3, :cond_0

    .line 482
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 486
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 489
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 490
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    aget-char v4, v2, v4

    if-eq v4, v0, :cond_1

    .line 496
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    .line 493
    :cond_2
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p3, v2, v1, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_1
    return-object p3

    .line 499
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unterminated quoted string at position "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private containsElements(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 519
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/Format;
    .locals 3

    .line 304
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 312
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang3/text/FormatFactory;

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lorg/apache/commons/lang3/text/FormatFactory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method private getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 1

    const/4 v0, 0x0

    .line 510
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 404
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 408
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v3, -0x1

    .line 411
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 412
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_4

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_3

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 433
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 419
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 423
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    const/16 v5, 0x2c

    .line 425
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 415
    :cond_4
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 437
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;
    .locals 1

    .line 462
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object p1
.end method

.method private parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 5

    .line 370
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 371
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 372
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    .line 374
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 375
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_3

    .line 382
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 386
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 374
    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    .line 392
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unterminated format element at position "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 7

    .line 328
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 329
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 332
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 333
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 334
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x7d

    const/16 v6, 0x2c

    if-eqz v3, :cond_0

    .line 335
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 336
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_0

    if-eq v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_2

    .line 342
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 344
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 350
    :catch_0
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    xor-int/2addr v3, v4

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 332
    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 354
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format argument index at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unterminated format element at position "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 3

    .line 448
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 450
    :cond_0
    invoke-static {}, Lorg/apache/commons/lang3/text/StrMatcher;->c()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/lang3/text/StrMatcher;->a([CI)I

    move-result v1

    .line 451
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    if-lez v1, :cond_1

    .line 452
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final applyPattern(Ljava/lang/String;)V
    .locals 12

    .line 144
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 145
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 146
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x0

    .line 156
    :goto_0
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 157
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    aget-char v7, v5, v7

    const/16 v8, 0x27

    if-eq v7, v8, :cond_8

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 163
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 164
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 165
    invoke-direct {p0, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v9

    .line 166
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 170
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    aget-char v8, v5, v8

    const/16 v9, 0x2c

    const/4 v10, 0x0

    if-ne v8, v9, :cond_2

    .line 171
    invoke-direct {p0, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v8

    .line 173
    invoke-direct {p0, v8}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getFormat(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v11

    if-nez v11, :cond_3

    .line 175
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move-object v8, v10

    move-object v11, v8

    .line 178
    :cond_3
    :goto_1
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_4

    move-object v8, v10

    .line 179
    :cond_4
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v6, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    invoke-static {v8}, Lorg/apache/commons/lang3/Validate;->a(Z)V

    .line 181
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    invoke-static {v9}, Lorg/apache/commons/lang3/Validate;->a(Z)V

    .line 182
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    aget-char v8, v5, v8

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_7

    .line 188
    :goto_4
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    aget-char v7, v5, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-direct {p0, v3}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto/16 :goto_0

    .line 183
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unreadable format element at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_8
    invoke-direct {p0, p1, v3, v2}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 192
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 193
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 194
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object p1

    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    if-eqz v1, :cond_a

    .line 202
    aput-object v1, p1, v4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 205
    :cond_b
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->setFormats([Ljava/text/Format;)V

    :cond_c
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 269
    :cond_1
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 272
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ObjectUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 275
    :cond_3
    check-cast p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;

    .line 276
    iget-object v2, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/ObjectUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 279
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    iget-object p1, p1, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v2, p1}, Lorg/apache/commons/lang3/ObjectUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 291
    invoke-super {p0}, Ljava/text/MessageFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 292
    iget-object v1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/commons/lang3/ObjectUtils;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 293
    iget-object v1, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/ObjectUtils;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 0

    .line 218
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 0

    .line 230
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 0

    .line 241
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 0

    .line 252
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/commons/lang3/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-object v0
.end method
