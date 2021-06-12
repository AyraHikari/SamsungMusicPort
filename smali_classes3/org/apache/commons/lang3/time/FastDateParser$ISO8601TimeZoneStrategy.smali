.class Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISO8601TimeZoneStrategy"
.end annotation


# static fields
.field private static final b:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final c:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final d:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 874
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->b:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 875
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->c:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 876
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}(?::)\\d{2}))"

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->d:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 849
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 850
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->a:Ljava/lang/String;

    return-void
.end method

.method static a(I)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 894
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid number of X"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 892
    :pswitch_0
    sget-object p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->d:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object p0

    .line 890
    :pswitch_1
    sget-object p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->c:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object p0

    .line 888
    :pswitch_2
    sget-object p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->b:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1

    const-string p1, "Z"

    .line 867
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UTC"

    .line 868
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 870
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GMT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    return-void
.end method

.method a(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 858
    iget-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method
