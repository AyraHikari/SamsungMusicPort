.class Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneStrategy"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 8

    const/4 v0, 0x0

    .line 777
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 750
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    .line 778
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object p1

    .line 779
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    aget-object v4, p1, v2

    .line 780
    aget-object v5, v4, v1

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 783
    :cond_0
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 784
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 785
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    aget-object v3, v4, v3

    invoke-interface {v6, v3, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    const/4 v6, 0x2

    aget-object v7, v4, v6

    invoke-interface {v3, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 788
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    aget-object v6, v4, v6

    invoke-interface {v3, v6, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_2
    invoke-virtual {v5}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 791
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    const/4 v6, 0x3

    aget-object v7, v4, v6

    invoke-interface {v3, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 792
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    aget-object v6, v4, v6

    invoke-interface {v3, v6, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    const/4 v6, 0x4

    aget-object v7, v4, v6

    invoke-interface {v3, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 795
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    aget-object v4, v4, v6

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 800
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(GMT[+-]\\d{1,2}:\\d{2}"

    .line 801
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "[+-]\\d{4}"

    .line 802
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 804
    invoke-static {p1, v4, v1}, Lorg/apache/commons/lang3/time/FastDateParser;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 806
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 807
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 825
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "GMT"

    .line 828
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 829
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    goto :goto_1

    .line 832
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->b:Ljava/util/SortedMap;

    invoke-interface {p1, p3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TimeZone;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 834
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not a supported timezone name"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 826
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GMT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 837
    :goto_1
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method a(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 815
    iget-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method
