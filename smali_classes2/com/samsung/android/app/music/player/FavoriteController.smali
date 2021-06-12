.class public final Lcom/samsung/android/app/music/player/FavoriteController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;,
        Lcom/samsung/android/app/music/player/FavoriteController$OnToggleFavoriteListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FavoriteController"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/support/v4/app/FragmentActivity;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/ImageView;

.field private final g:Lcom/samsung/android/app/music/player/FavoriteCache;

.field private h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final i:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

.field private j:J

.field private k:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private l:Landroid/animation/AnimatorSet;

.field private m:Landroid/animation/ObjectAnimator;

.field private n:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/samsung/android/app/music/player/FavoriteController$OnToggleFavoriteListener;

.field private final s:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/player/FavoriteController;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/FavoriteController;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 84
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->j:J

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->k:I

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->o:Z

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->p:Z

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->q:Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->r:Lcom/samsung/android/app/music/player/FavoriteController$OnToggleFavoriteListener;

    .line 318
    new-instance v0, Lcom/samsung/android/app/music/player/FavoriteController$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/FavoriteController$4;-><init>(Lcom/samsung/android/app/music/player/FavoriteController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->s:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->d:Landroid/support/v4/app/FragmentActivity;

    .line 109
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->c:Landroid/content/Context;

    const p1, 0x7f13028d

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/player/FavoriteController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/FavoriteController$1;-><init>(Lcom/samsung/android/app/music/player/FavoriteController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/player/FavoriteController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/FavoriteController$2;-><init>(Lcom/samsung/android/app/music/player/FavoriteController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    const v0, 0x7f1302b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->f:Landroid/widget/ImageView;

    const p1, 0x7f13028c

    .line 127
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->i:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    sget p2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->c:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/FavoriteController;->b()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    .line 134
    new-instance p1, Lcom/samsung/android/app/music/player/FavoriteCache;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/FavoriteController;->c:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/player/FavoriteCache;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->g:Lcom/samsung/android/app/music/player/FavoriteCache;

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)I
    .locals 2

    .line 328
    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/MediaDataUtils;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/FavoriteController;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/FavoriteController;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->j:J

    return-wide v0
.end method

.method private a()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/FavoriteController;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->o:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->o:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    if-eqz p1, :cond_1

    .line 184
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->o:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/FavoriteController;->b(Z)V

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/FavoriteController;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/FavoriteController;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->o:Z

    return p1
.end method

.method private b()I
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->p:Z

    if-eqz v0, :cond_1

    .line 197
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->o:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b01ab

    goto :goto_0

    :cond_0
    const v0, 0x7f0b019a

    goto :goto_0

    :cond_1
    const v0, 0x7f0b03f1

    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/FavoriteController;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/FavoriteController;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/FavoriteController;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->l:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->c:Landroid/content/Context;

    const v1, 0x7f060002

    .line 206
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->l:Landroid/animation/AnimatorSet;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->l:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->m:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xc8

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->m:Landroid/animation/ObjectAnimator;

    :cond_1
    const/4 p1, 0x2

    .line 215
    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->l:Landroid/animation/AnimatorSet;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->m:Landroid/animation/ObjectAnimator;

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 216
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->i:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    if-eqz p1, :cond_3

    .line 217
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->i:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a()V

    goto :goto_0

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(I)Z
    .locals 1

    const v0, 0x20004

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/FavoriteController;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->n:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    return-object p0
.end method

.method private c(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 270
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->p:Z

    if-eq v0, p1, :cond_1

    .line 312
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->p:Z

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ebd70a4    # 0.37f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/player/FavoriteController;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->o:Z

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/player/FavoriteController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/player/FavoriteController;)Lcom/samsung/android/app/music/player/FavoriteController$OnToggleFavoriteListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->r:Lcom/samsung/android/app/music/player/FavoriteController$OnToggleFavoriteListener;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 279
    iput p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->k:I

    .line 282
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 283
    iget p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->k:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/FavoriteController;->c(I)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->g:Lcom/samsung/android/app/music/player/FavoriteCache;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->d:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/samsung/android/app/music/player/FavoriteController$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/app/music/player/FavoriteController$3;-><init>(Lcom/samsung/android/app/music/player/FavoriteController;J)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    goto :goto_0

    .line 263
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/player/FavoriteController;->b:Ljava/lang/String;

    const-string p2, "toggleFavorite - audio id is invalid"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->q:Z

    return v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string p2, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    .line 349
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->g:Lcom/samsung/android/app/music/player/FavoriteCache;

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->j:J

    new-instance p2, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;

    iget-wide v2, p0, Lcom/samsung/android/app/music/player/FavoriteController;->j:J

    invoke-direct {p2, p0, v2, v3}, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;-><init>(Lcom/samsung/android/app/music/player/FavoriteController;J)V

    invoke-virtual {p1, v0, v1, p2}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 9

    .line 289
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->j:J

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->k:I

    .line 292
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v1

    long-to-int v1, v1

    .line 293
    invoke-static {v1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v4

    .line 294
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v5

    .line 296
    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/FavoriteController;->q:Z

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/player/FavoriteController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/player/FavoriteController;->d(I)V

    .line 297
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/FavoriteController;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/FavoriteController;->c(Z)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->g:Lcom/samsung/android/app/music/player/FavoriteCache;

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->j:J

    new-instance v2, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;

    iget-wide v7, p0, Lcom/samsung/android/app/music/player/FavoriteController;->j:J

    invoke-direct {v2, p0, v7, v8}, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;-><init>(Lcom/samsung/android/app/music/player/FavoriteController;J)V

    const/4 v3, 0x1

    .line 302
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;Z)V

    .line 303
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/player/FavoriteController;->c(Z)V

    .line 306
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/player/FavoriteController;->c:Landroid/content/Context;

    const v7, 0x7f100087

    iget-object v8, p0, Lcom/samsung/android/app/music/player/FavoriteController;->s:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .line 307
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

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

.method public onStopped()V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method public setState(Z)V
    .locals 1

    .line 155
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->q:Z

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/FavoriteController;->q:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/FavoriteController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/FavoriteController;->d(I)V

    :cond_0
    return-void
.end method
