.class Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$ScheduleCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LastRefreshTime"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;,
        Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$SystemTimeGetter;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .line 138
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$SystemTimeGetter;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$SystemTimeGetter;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;-><init>(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;J)V

    return-void
.end method

.method synthetic constructor <init>(JLcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;-><init>(J)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;J)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-wide p2, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;->a:J

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;->b:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;->b:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;->a()J

    move-result-wide v0

    const-string v2, "pref_key_last_refresh_time"

    const-wide/16 v3, 0x0

    .line 150
    invoke-static {p1, v2, v3, v4}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v4, v2, v0

    .line 152
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;->a:J

    cmp-long p1, v4, v6

    if-gtz p1, :cond_0

    const-string p1, "SpotifyRefreshScheduler.LastRefreshTime"

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canSchedule. don\'t schedule. start - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", now - "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", gap - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;->a:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "pref_key_last_refresh_time"

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime;->b:Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$LastRefreshTime$TimeGetter;->a()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
