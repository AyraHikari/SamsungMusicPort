.class final Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnSeekBarChangeListenerImpl"
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private final c:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

.field private final d:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

.field private final e:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

.field private final f:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 1

    const-string v0, "uiUpdater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expandSeekBarManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->d:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->e:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    iput-object p4, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->f:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->b:Z

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b()J

    move-result-wide v0

    .line 332
    iget-object p3, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 333
    iget-object p3, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->d:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a(I)I

    move-result p2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    if-gez p2, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 337
    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 345
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f()V

    .line 346
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->f:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-wide v2, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->a:J

    invoke-interface {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    :goto_0
    int-to-long p1, p2

    mul-long v0, v0, p1

    const/16 p1, 0x3e8

    int-to-long p1, p1

    .line 348
    div-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->a:J

    .line 349
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    iget-wide p2, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->a:J

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d(J)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->f()V

    .line 322
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->f:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->a:J

    .line 323
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Z)V

    .line 324
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->b:Z

    .line 325
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->e:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->d()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->f:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->a:J

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    const-wide/16 v0, -0x1

    .line 354
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->a:J

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Z)V

    .line 356
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->b:Z

    .line 357
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnSeekBarChangeListenerImpl;->e:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->e()V

    return-void
.end method
