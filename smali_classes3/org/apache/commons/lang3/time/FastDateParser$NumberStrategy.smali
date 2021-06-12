.class Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 685
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 686
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->a:I

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 0

    return p1
.end method

.method a(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 717
    iget p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;->a(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method a(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 703
    invoke-virtual {p1}, Lorg/apache/commons/lang3/time/FastDateParser;->isNextNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(\\p{Nd}{"

    .line 704
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/time/FastDateParser;->getFieldWidth()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}+)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "(\\p{Nd}++)"

    .line 707
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
