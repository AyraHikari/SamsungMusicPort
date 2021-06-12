.class Lcom/samsung/android/app/music/main/AnalyticsTask$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/AnalyticsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/AnalyticsTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/AnalyticsTask;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/samsung/android/app/music/main/AnalyticsTask$2;->a:Lcom/samsung/android/app/music/main/AnalyticsTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_INITIALIZE"

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "MActivity"

    const-string v0, "mSamsungAnalyticsReceiver"

    .line 217
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EXTRA_FROM"

    .line 219
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "MActivity"

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSamsungAnalyticsReceiver - from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "ACTION_REPORT_DEVICE_ACCESS"

    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "MActivity"

    const-string v0, "mSamsungAnalyticsReceiver - ACTION_REPORT_DEVICE_ACCESS"

    .line 244
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/samsung/android/app/music/main/AnalyticsTask$2;->a:Lcom/samsung/android/app/music/main/AnalyticsTask;

    invoke-static {p2}, Lcom/samsung/android/app/music/main/AnalyticsTask;->a(Lcom/samsung/android/app/music/main/AnalyticsTask;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 247
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
