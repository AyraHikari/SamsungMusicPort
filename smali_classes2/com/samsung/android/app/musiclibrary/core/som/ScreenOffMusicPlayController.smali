.class final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;
    }
.end annotation


# static fields
.field private static final PAUSE_STATE:F = 0.0f

.field private static final PLAY_STATE:F = 1.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNext:Landroid/view/View;

.field private mOnControllerClickListener:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

.field private final mPlay:Landroid/view/View;

.field private mPlayIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mPrev:Landroid/view/View;

.field private mPrevNextLogged:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 53
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    .line 54
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    .line 55
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_btn:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    .line 56
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_icon_lt:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 57
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 59
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget p3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_next:I

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 60
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget p3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_previous:I

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 61
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget p3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_play:I

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 63
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)V

    .line 94
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mOnControllerClickListener:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrevNextLogged:Z

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrevNextLogged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->updatePlayState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayIcon:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    return-object p0
.end method

.method private updatePlayState(Z)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 202
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 204
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    if-eqz p1, :cond_0

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_pause:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_play:I

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

.method public onScreenOffAnimationEnd(Z)V
    .locals 0

    return-void
.end method

.method public onScreenOffAnimationStart()V
    .locals 11

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    const/16 v3, 0x12c

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 137
    invoke-static {v0, v5, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    const/16 v7, 0xc8

    .line 139
    invoke-static {v2, v5, v4, v7, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 141
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    .line 142
    invoke-static {v6, v5, v4, v3, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 143
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    .line 144
    invoke-static {v8, v5, v4, v7, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 146
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    .line 147
    invoke-static {v9, v5, v4, v3, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 148
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    .line 149
    invoke-static {v9, v5, v4, v7, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x6

    .line 151
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v6, v5, v0

    const/4 v0, 0x3

    aput-object v8, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    .line 152
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onScreenOnAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onScreenOnAnimationStart()V
    .locals 10

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    const/16 v2, 0x12c

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 106
    invoke-static {v0, v4, v3, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    const/16 v6, 0xc8

    .line 108
    invoke-static {v1, v4, v3, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 110
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    .line 111
    invoke-static {v5, v4, v3, v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 112
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    .line 113
    invoke-static {v7, v4, v3, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 115
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    .line 116
    invoke-static {v8, v4, v3, v2, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 117
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    .line 118
    invoke-static {v8, v4, v3, v6, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v4, 0x6

    .line 120
    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v5, v4, v0

    const/4 v0, 0x3

    aput-object v7, v4, v0

    const/4 v0, 0x4

    aput-object v2, v4, v0

    const/4 v0, 0x5

    aput-object v3, v4, v0

    .line 121
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-void
.end method

.method setControllerClickListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mOnControllerClickListener:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    return-void
.end method
