.class Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyRefreshScheduler$AccessingCount;
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
    name = "AccessingCount"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "pref_key_refresh_skip_count"

    const/4 v1, 0x0

    .line 112
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x14

    if-gt v0, v3, :cond_0

    const-string v3, "SpotifyRefreshScheduler.AccessingCount"

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canSchedule. don\'t schedule. skip count - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pref_key_refresh_skip_count"

    add-int/2addr v0, v2

    .line 115
    invoke-static {p1, v3, v0}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return v1

    :cond_0
    return v2
.end method

.method public b(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "pref_key_refresh_skip_count"

    const/4 v1, 0x0

    .line 124
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
