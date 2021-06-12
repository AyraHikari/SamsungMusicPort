.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugUiUpdater"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:I


# virtual methods
.method a()V
    .locals 2

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->b:J

    return-void
.end method

.method a(I)V
    .locals 6

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "update progress interval: %03d msec / target interval: %03d msec / amount: %d / progress: %04d / postFrameCallback() ~ doFrame() takes: %02d msec"

    const/4 v3, 0x5

    .line 629
    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->c:J

    sub-long v4, v0, v4

    .line 631
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->g:I

    sub-int v4, p1, v4

    .line 632
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->b:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v3, v1

    .line 629
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugUiUpdater"

    .line 633
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->g:I

    return-void
.end method

.method a(J)V
    .locals 5

    const-string v0, "DebugUiUpdater"

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentTime updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " msec / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->a:Landroid/content/Context;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    .line 607
    invoke-static {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / update interval "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->d:J

    sub-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " msec"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->d:J

    return-void
.end method

.method a(JJZ)V
    .locals 5

    const-string v0, "DebugUiUpdater"

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " msec / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->a:Landroid/content/Context;

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    .line 616
    invoke-static {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / update interval "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->e:J

    sub-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " msec / progressUpdateInterval: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " msec / isLocalTrack: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 615
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->f:J

    .line 622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->e:J

    return-void
.end method

.method b()V
    .locals 2

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->c:J

    return-void
.end method
