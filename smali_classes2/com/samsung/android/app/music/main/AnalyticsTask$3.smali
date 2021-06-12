.class Lcom/samsung/android/app/music/main/AnalyticsTask$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


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

    .line 276
    iput-object p1, p0, Lcom/samsung/android/app/music/main/AnalyticsTask$3;->a:Lcom/samsung/android/app/music/main/AnalyticsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string v0, "Ui"

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserInfoChanged : userInfo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/main/AnalyticsTask$3;->a:Lcom/samsung/android/app/music/main/AnalyticsTask;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/AnalyticsTask;->b(Lcom/samsung/android/app/music/main/AnalyticsTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "streaming_user"

    if-eqz p1, :cond_0

    const-string p1, "yes"

    goto :goto_0

    :cond_0
    const-string p1, "no"

    .line 289
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    return-void
.end method
