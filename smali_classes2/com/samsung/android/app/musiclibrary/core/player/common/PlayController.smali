.class public final Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# instance fields
.field private isEnabled:Z

.field private isLazyInit:Z

.field private final mContext:Landroid/content/Context;

.field private final mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

.field private mIsPlayInit:Z

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mNext:Landroid/view/View;

.field private final mPauseToPlayAnimationResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mPlay:Landroid/view/View;

.field private final mPlayToPauseAnimationResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mPrev:Landroid/view/View;

.field private final mPrevNextAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 72
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;II)V
    .locals 2
    .param p5    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->isLazyInit:Z

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->isEnabled:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mIsPlayInit:Z

    .line 269
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrevNextAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mContext:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 81
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    .line 83
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    .line 84
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    .line 85
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_btn:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    .line 87
    iput p5, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayToPauseAnimationResId:I

    .line 88
    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPauseToPlayAnimationResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object p0
.end method

.method private initLazy()V
    .locals 4

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->isLazyInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrevNextAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_previous:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mForwardRewindInputListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrevNextAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_next:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    :cond_1
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->isLazyInit:Z

    return-void
.end method

.method private setNextEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ebd70a4    # 0.37f

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->isEnabled:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 215
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private setPrevEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ebd70a4    # 0.37f

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->isEnabled:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private updateControlButtonEnabled(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isNextControllable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v2

    long-to-int p1, v2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 183
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setPrevEnabled(Z)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 184
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setNextEnabled(Z)V

    goto :goto_2

    .line 186
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setNextEnabled(Z)V

    :goto_2
    return-void
.end method

.method private updateMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updateControlButtonEnabled(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method private updatePlayState(Z)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    if-eqz p1, :cond_0

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_pause:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_play:I

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 144
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mIsPlayInit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mIsPlayInit:Z

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setActivated(Z)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 150
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayToPauseAnimationResId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPauseToPlayAnimationResId:I

    if-eq v2, v3, :cond_4

    if-eqz p1, :cond_2

    .line 154
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayToPauseAnimationResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 156
    :cond_2
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPauseToPlayAnimationResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    :goto_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 160
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_icon_lt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    .line 168
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;Lcom/airbnb/lottie/LottieAnimationView;Z)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/high16 p1, -0x40800000    # -1.0f

    .line 175
    :goto_3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 176
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    :cond_6
    return-void
.end method


# virtual methods
.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public getNextView()Landroid/view/View;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->next_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlayView()Landroid/view/View;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPrevView()Landroid/view/View;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "com.samsung.android.app.music.core.state.DRM_REQUEST"

    .line 250
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->initLazy()V

    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updateMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 240
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updatePlayState(Z)V

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

.method public setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 191
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->isEnabled:Z

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method
