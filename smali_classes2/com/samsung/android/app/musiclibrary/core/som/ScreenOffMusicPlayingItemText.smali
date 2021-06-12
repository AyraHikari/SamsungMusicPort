.class final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# instance fields
.field private final mAppName:Landroid/widget/TextView;

.field private final mArtist:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mContext:Landroid/content/Context;

    .line 41
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    .line 42
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->artist:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mArtist:Landroid/widget/TextView;

    .line 43
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->app_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mArtist:Landroid/widget/TextView;

    return-object p0
.end method

.method private updateUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 163
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->no_queued_tracks:I

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->updateUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    return-void
.end method

.method public onScreenOffAnimationEnd(Z)V
    .locals 0

    return-void
.end method

.method public onScreenOffAnimationStart()V
    .locals 10

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x3f666666    # 0.9f

    const/16 v6, 0x12c

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 141
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    .line 142
    invoke-static {v0, v7, v5, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 143
    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    .line 144
    invoke-static {v0, v7, v4, v6, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 146
    new-array v9, v3, [Landroid/animation/Animator;

    aput-object v8, v9, v2

    aput-object v0, v9, v1

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    .line 150
    invoke-static {v0, v7, v5, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 151
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    .line 152
    invoke-static {v5, v7, v4, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 154
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onScreenOnAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onScreenOnAnimationStart()V
    .locals 10

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x3f666666    # 0.9f

    const/16 v6, 0x12c

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 116
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    .line 117
    invoke-static {v0, v5, v7, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 118
    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    .line 119
    invoke-static {v0, v4, v7, v6, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 121
    new-array v9, v3, [Landroid/animation/Animator;

    aput-object v8, v9, v2

    aput-object v0, v9, v1

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    .line 125
    invoke-static {v0, v5, v7, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 126
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    .line 127
    invoke-static {v5, v4, v7, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 129
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onStartCalled()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->setTextScrollEnabled(Z)V

    return-void
.end method

.method public onStopCalled()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->setTextScrollEnabled(Z)V

    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public setTextScrollEnabled(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
