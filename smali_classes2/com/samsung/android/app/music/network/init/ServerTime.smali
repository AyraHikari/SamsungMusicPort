.class public final Lcom/samsung/android/app/music/network/init/ServerTime;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field private static b:Ljava/lang/Long;

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.music.provider.server_time"

    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/network/init/ServerTime;->a:Landroid/net/Uri;

    return-void
.end method

.method static a(J)Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT+00:00"

    .line 92
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 93
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/music/network/init/ServerTime;->c:Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "init."

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->e()V

    .line 62
    sget-object v0, Lcom/samsung/android/app/music/network/init/ServerTime;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()J
    .locals 4

    .line 71
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->e()V

    .line 72
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 75
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/app/music/network/init/ServerTime;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 87
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/init/ServerTime;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Lcom/samsung/android/app/music/MusicApplication;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.app."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()V
    .locals 7

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/network/init/ServerTime;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateServerTimeIfNeeded. context is null. maybe init method does not called."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/network/init/ServerTime;->b:Ljava/lang/Long;

    if-nez v0, :cond_7

    .line 103
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/network/init/ServerTime;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/network/init/ServerTime;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 104
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 105
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "time_gap"

    .line 110
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateServerTimeIfNeeded. serverTimeGap - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 113
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/music/network/init/ServerTime;->b:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v0, :cond_7

    .line 120
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    .line 106
    :cond_3
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/music/network/init/ServerTime;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateServerTimeIfNeeded. cursor null or no record"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    .line 120
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    return-void

    .line 103
    :goto_1
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 120
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method
