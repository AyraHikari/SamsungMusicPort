.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSeekBarChangeListenerImpl"
.end annotation


# instance fields
.field private a:J

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 148
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e()J

    move-result-wide v0

    .line 164
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g()Z

    move-result p3

    const-wide/16 v2, 0x3e8

    if-eqz p3, :cond_3

    const-wide/16 v4, 0x0

    cmp-long p3, v0, v4

    if-lez p3, :cond_1

    if-gez p2, :cond_2

    :cond_1
    const/4 p2, 0x0

    :cond_2
    int-to-long v4, p2

    mul-long v0, v0, v4

    .line 168
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->a:J

    .line 169
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    iget-wide p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->a:J

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c(J)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b()V

    int-to-long p1, p2

    mul-long v0, v0, p1

    .line 178
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->a:J

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-wide p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->a:J

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    iget-wide p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->a:J

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c(J)V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b()V

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->a:J

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b(Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->a:J

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(J)V

    const-wide/16 v0, -0x1

    .line 187
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->a:J

    .line 188
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b(Z)V

    return-void
.end method
