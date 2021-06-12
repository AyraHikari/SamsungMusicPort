.class final Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 545
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d(J)V

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v1, 0x3e8

    int-to-long v1, v1

    iget-object v3, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d()J

    move-result-wide v3

    mul-long v1, v1, v3

    iget-object v3, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    const/4 v1, -0x1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->d(J)V

    .line 551
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$UiUpdater$updateUiImmediate$1;->a:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->a(Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return-void
.end method
