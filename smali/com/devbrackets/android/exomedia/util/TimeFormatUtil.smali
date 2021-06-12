.class public Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/StringBuilder;

.field private static b:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a:Ljava/lang/StringBuilder;

    .line 26
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->b:Ljava/util/Formatter;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "--:--"

    return-object p0

    :cond_0
    const-wide/32 v2, 0xea60

    .line 42
    rem-long v4, p0, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    .line 43
    rem-long v8, p0, v6

    div-long/2addr v8, v2

    const-wide/32 v2, 0x5265c00

    .line 44
    rem-long/2addr p0, v2

    div-long/2addr p0, v6

    .line 46
    sget-object v2, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x2

    const/4 v6, 0x1

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 48
    sget-object v0, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->b:Ljava/util/Formatter;

    const-string v1, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v2

    invoke-virtual {v0, v1, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_1
    sget-object p0, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->b:Ljava/util/Formatter;

    const-string p1, "%02d:%02d"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, p1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
