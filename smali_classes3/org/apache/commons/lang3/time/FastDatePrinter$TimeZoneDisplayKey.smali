.class Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneDisplayKey"
.end annotation


# instance fields
.field private final a:Ljava/util/TimeZone;

.field private final b:I

.field private final c:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .locals 0

    .line 1344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1345
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->a:Ljava/util/TimeZone;

    if-eqz p2, :cond_0

    const/high16 p1, -0x80000000

    or-int/2addr p1, p3

    .line 1347
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->b:I

    goto :goto_0

    .line 1349
    :cond_0
    iput p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->b:I

    .line 1351
    :goto_0
    iput-object p4, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->c:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1370
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1371
    check-cast p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    .line 1372
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->a:Ljava/util/TimeZone;

    iget-object v3, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->a:Ljava/util/TimeZone;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->b:I

    iget v3, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->b:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->c:Ljava/util/Locale;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->c:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1359
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->c:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->a:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
