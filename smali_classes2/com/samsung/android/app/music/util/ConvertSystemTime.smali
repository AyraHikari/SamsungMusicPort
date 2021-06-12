.class public Lcom/samsung/android/app/music/util/ConvertSystemTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ConvertSystemTime"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT+00:00"

    .line 67
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 69
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 76
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static a(Z)J
    .locals 4

    .line 101
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    sget-object p0, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServerTime timeGap is 0. so return device time. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 106
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 24
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 25
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT+00:00"

    .line 59
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 60
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()J
    .locals 3

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 34
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 43
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()J
    .locals 2

    const/4 v0, 0x1

    .line 90
    invoke-static {v0}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a(Z)J

    move-result-wide v0

    return-wide v0
.end method
