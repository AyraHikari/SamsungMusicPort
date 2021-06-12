.class Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneNumberRule"
.end annotation


# static fields
.field static final a:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

.field static final b:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

.field static final c:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;


# instance fields
.field final d:Z

.field final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1181
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;-><init>(ZZ)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    .line 1182
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    invoke-direct {v0, v1, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;-><init>(ZZ)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->b:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    .line 1183
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;-><init>(ZZ)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->c:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    iput-boolean p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->d:Z

    .line 1196
    iput-boolean p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    .line 1212
    iget-boolean v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "Z"

    .line 1213
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const/16 v0, 0xf

    .line 1217
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v0, p2

    if-gez v0, :cond_1

    const/16 p2, 0x2d

    .line 1220
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v0, v0

    goto :goto_0

    :cond_1
    const/16 p2, 0x2b

    .line 1223
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const p2, 0x36ee80

    .line 1226
    div-int p2, v0, p2

    .line 1227
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    .line 1229
    iget-boolean v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->d:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x3a

    .line 1230
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const v1, 0xea60

    .line 1233
    div-int/2addr v0, v1

    mul-int/lit8 p2, p2, 0x3c

    sub-int/2addr v0, p2

    .line 1234
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    return-void
.end method
