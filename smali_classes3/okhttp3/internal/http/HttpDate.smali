.class public final Lokhttp3/internal/http/HttpDate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 37
    new-instance v0, Lokhttp3/internal/http/HttpDate$1;

    invoke-direct {v0}, Lokhttp3/internal/http/HttpDate$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/HttpDate;->a:Ljava/lang/ThreadLocal;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v3, "EEE MMM d HH:mm:ss yyyy"

    const-string v4, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const-string v5, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const-string v6, "EEE, dd MMM yy HH:mm:ss z"

    const-string v7, "EEE dd-MMM-yyyy HH:mm:ss z"

    const-string v8, "EEE dd MMM yyyy HH:mm:ss z"

    const-string v9, "EEE dd-MMM-yyyy HH-mm-ss z"

    const-string v10, "EEE dd-MMM-yy HH:mm:ss z"

    const-string v11, "EEE dd MMM yy HH:mm:ss z"

    const-string v12, "EEE,dd-MMM-yy HH:mm:ss z"

    const-string v13, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const-string v14, "EEE, dd-MM-yyyy HH:mm:ss z"

    const-string v15, "EEE MMM d yyyy HH:mm:ss z"

    .line 49
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpDate;->b:[Ljava/lang/String;

    .line 71
    sget-object v0, Lokhttp3/internal/http/HttpDate;->b:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lokhttp3/internal/http/HttpDate;->c:[Ljava/text/DateFormat;

    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 114
    sget-object v0, Lokhttp3/internal/http/HttpDate;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 9

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 80
    :cond_0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 81
    sget-object v3, Lokhttp3/internal/http/HttpDate;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormat;

    invoke-virtual {v3, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 82
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    return-object v3

    .line 87
    :cond_1
    sget-object v3, Lokhttp3/internal/http/HttpDate;->b:[Ljava/lang/String;

    monitor-enter v3

    .line 88
    :try_start_0
    sget-object v4, Lokhttp3/internal/http/HttpDate;->b:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    .line 89
    sget-object v6, Lokhttp3/internal/http/HttpDate;->c:[Ljava/text/DateFormat;

    aget-object v6, v6, v5

    if-nez v6, :cond_2

    .line 91
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Lokhttp3/internal/http/HttpDate;->b:[Ljava/lang/String;

    aget-object v7, v7, v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    sget-object v7, Lokhttp3/internal/Util;->g:Ljava/util/TimeZone;

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    sget-object v7, Lokhttp3/internal/http/HttpDate;->c:[Ljava/text/DateFormat;

    aput-object v6, v7, v5

    .line 97
    :cond_2
    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 98
    invoke-virtual {v6, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    .line 99
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-eqz v7, :cond_3

    .line 105
    monitor-exit v3

    return-object v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 108
    :cond_4
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
