.class public Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "GoogleFireBaseWeeklyLogging"

    const-string v1, "sendWeeklyLogging"

    .line 54
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v0}, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging$1;->start()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/samsung/android/app/music/analytics/GoogleFireBaseWeeklyLogging;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    .line 49
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
