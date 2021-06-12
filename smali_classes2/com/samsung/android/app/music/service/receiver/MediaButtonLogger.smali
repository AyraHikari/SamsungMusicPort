.class public Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->a(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->a:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->b(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->b:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->c(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->c:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->d(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;-><init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
