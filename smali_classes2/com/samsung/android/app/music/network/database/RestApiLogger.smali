.class public Lcom/samsung/android/app/music/network/database/RestApiLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(J)Ljava/lang/String;
    .locals 3

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 41
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 34
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/database/RestApiLogger;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 35
    sget-object p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryContentProvider;->a:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/database/RestApiLogger;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/network/database/RestApiHistoryRoom$RestApiHistory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 28
    sget-object p2, Lcom/samsung/android/app/music/network/database/RestApiHistoryContentProvider;->a:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
