.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/DebugTspUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TSP_ERROR_LIMIT:I = 0x3e8

.field private static final TSP_WARNING_LIMIT:I = 0xc8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printTspLog(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 19
    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/DebugTspUtils;->printTspLog(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printTspLog(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 23
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "TSP %10d ms | %-25s | %-20s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 p3, 0x2

    aput-object p4, v2, p3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v0, 0x3e8

    cmp-long p4, p1, v0

    if-lez p4, :cond_0

    .line 27
    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    .line 29
    invoke-static {p0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
