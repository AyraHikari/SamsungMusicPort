.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;
.super Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MuxNotifier"
.end annotation


# instance fields
.field public a:Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final synthetic b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->o()V

    :cond_0
    return-void
.end method

.method public a(IIIF)V
    .locals 2

    .line 1047
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->a(IZ)V

    .line 1048
    iget-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object p3, p3, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {p3, p1, p2, p4}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->a(IIF)V

    .line 1050
    iget-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->a:Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;

    if-eqz p3, :cond_0

    .line 1051
    iget-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->a:Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;

    invoke-interface {p3, p1, p2, p4}, Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;->a(IIF)V

    :cond_0
    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
    .locals 0

    .line 1023
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->f()V

    if-eqz p1, :cond_0

    .line 1026
    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(J)Z
    .locals 7

    .line 1016
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getCurrentPosition()J

    move-result-wide v0

    .line 1017
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    add-long/2addr v0, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 3

    .line 1057
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getDuration()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->setDuration(J)V

    .line 1059
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsCore;->o()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1032
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setKeepScreenOn(Z)V

    .line 1033
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->h()V

    return-void
.end method
