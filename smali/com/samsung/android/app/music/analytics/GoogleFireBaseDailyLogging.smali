.class public Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "GoogleFireBaseDailyLogging"

    const-string v1, "sendDailyLogging"

    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0}, Lcom/samsung/android/app/music/analytics/GoogleFireBaseDailyLogging$1;->start()V

    return-void
.end method
