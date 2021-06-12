.class Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing$1;->a:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing$1;->a:Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;->a(Lcom/samsung/android/app/music/widget/progress/MusicProgressBarScrubbing;)V

    return-void
.end method
