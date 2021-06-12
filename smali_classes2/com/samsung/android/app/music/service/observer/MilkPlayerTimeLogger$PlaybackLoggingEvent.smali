.class public final Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlaybackLoggingEvent"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 498
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 499
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v1

    const-string v2, "0028"

    .line 500
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 501
    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;IZ)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 502
    invoke-static {v4, v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;I)Ljava/util/Map;

    move-result-object v4

    .line 501
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 503
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 504
    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;IZ)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v4, v0, v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;IZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
