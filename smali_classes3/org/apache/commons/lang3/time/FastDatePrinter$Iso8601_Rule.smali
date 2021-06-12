.class Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;
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
    name = "Iso8601_Rule"
.end annotation


# static fields
.field static final a:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

.field static final b:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

.field static final c:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1245
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    .line 1247
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->b:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    .line 1249
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->c:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->d:I

    return-void
.end method

.method static a(I)Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 1267
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid number of X"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1265
    :pswitch_0
    sget-object p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->c:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    return-object p0

    .line 1263
    :pswitch_1
    sget-object p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->b:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    return-object p0

    .line 1261
    :pswitch_2
    sget-object p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1287
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->d:I

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 3

    const/16 v0, 0xf

    .line 1295
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "Z"

    .line 1297
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const/16 v1, 0x10

    .line 1301
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v0, p2

    if-gez v0, :cond_1

    const/16 p2, 0x2d

    .line 1304
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v0, v0

    goto :goto_0

    :cond_1
    const/16 p2, 0x2b

    .line 1307
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const p2, 0x36ee80

    .line 1310
    div-int p2, v0, p2

    .line 1311
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    .line 1313
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->d:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    return-void

    .line 1317
    :cond_2
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->d:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    const/16 v1, 0x3a

    .line 1318
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const v1, 0xea60

    .line 1321
    div-int/2addr v0, v1

    mul-int/lit8 p2, p2, 0x3c

    sub-int/2addr v0, p2

    .line 1322
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    return-void
.end method
