.class public final Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/PlayerSceneStateListener;
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

.field private final d:Landroid/support/v4/app/FragmentManager;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private k:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private l:Lcom/samsung/android/app/music/network/NetworkManager;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

.field private final t:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

.field private final u:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final v:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

.field private final w:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a:I

    const/4 v1, 0x1

    .line 68
    iput v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b:I

    .line 98
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->q:Z

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->r:Z

    .line 104
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->t:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    .line 125
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->u:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 134
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$3;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->v:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    .line 202
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->w:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e:Landroid/content/Context;

    .line 149
    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->d:Landroid/support/v4/app/FragmentManager;

    const p3, 0x7f130296

    .line 151
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f:Landroid/view/View;

    const p3, 0x7f1302bd

    .line 152
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->g:Landroid/view/View;

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e()V

    .line 155
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->t:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker$OnResultListener;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    .line 157
    instance-of p2, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz p2, :cond_0

    .line 158
    move-object p2, p1

    check-cast p2, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->l:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 160
    :cond_0
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    if-eqz p2, :cond_1

    .line 161
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->s:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->o:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->j:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p0
.end method

.method private a(Landroid/net/Uri;J)V
    .locals 7

    .line 420
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$6;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V

    const v5, 0x7f100087

    move-object v2, p1

    move-wide v3, p2

    .line 421
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 3

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 447
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    .line 448
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 449
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Landroid/net/Uri;J)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Landroid/view/View;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Ljava/util/List;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 261
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 269
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c(I)V

    .line 270
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(ZLjava/util/List;)V

    return-void

    .line 262
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e:Landroid/content/Context;

    const v1, 0x7f0b014c

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private a(ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;)V"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->d:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->d:Landroid/support/v4/app/FragmentManager;

    const-string v2, "RecommendDialog"

    .line 291
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    .line 295
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;

    invoke-direct {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;-><init>()V

    .line 296
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a(Ljava/util/List;)V

    .line 297
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$5;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 303
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->d:Landroid/support/v4/app/FragmentManager;

    const-string v0, "RecommendDialog"

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a(Ljava/util/List;)V

    .line 306
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->p:I

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e:Landroid/content/Context;

    return-object p0
.end method

.method private c(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->h:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 276
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->i:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->o:I

    return p0
.end method

.method private e()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$4;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f()V

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->h()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->p:I

    return p0
.end method

.method private f()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e:Landroid/content/Context;

    const v1, 0x7f05000b

    .line 183
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->h:Landroid/view/animation/Animation;

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e:Landroid/content/Context;

    const v1, 0x7f05000a

    .line 185
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->i:Landroid/view/animation/Animation;

    return-void
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(ZLjava/util/List;)V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->n:Z

    return p0
.end method

.method private h()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->w:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->n:Z

    return-void
.end method

.method private i()Z
    .locals 3

    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-Recommend"

    const-string v2, "isButtonEnable() is not Enabled"

    .line 401
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SMUSIC-Recommend"

    const-string v2, "isButtonEnable() This is MultiWindowMode. Not Support Recommend"

    .line 404
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private j()Z
    .locals 3

    const-string v0, "SMUSIC-Recommend"

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkButtonDisplay() mIsRecommendable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 416
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->i()Z

    move-result v0

    return v0
.end method

.method private k()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->j:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-Recommend"

    const-string v1, "loadPlayerRecommend() mLastMetadata is null"

    .line 454
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->j:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 229
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->n:Z

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-Recommend"

    const-string v1, "hide() Layout is not updated yet"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->w:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;->removeMessages(I)V

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b()V

    goto :goto_0

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->g()V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a()V

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c(I)V

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(ZLjava/util/List;)V

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->w:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->w:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->k()V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->d:Landroid/support/v4/app/FragmentManager;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->k:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->q:Z

    return v0
.end method

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
    .locals 1

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->h()V

    .line 361
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->j:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 362
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

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

.method public onStartCalled()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->l:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->l:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->u:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->s:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->s:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->v:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    :cond_1
    return-void
.end method

.method public onStopCalled()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 344
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(ZLjava/util/List;)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->l:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->l:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->u:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->s:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->s:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->v:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->release()V

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->k:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method public setState(Z)V
    .locals 1

    .line 489
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->q:Z

    .line 490
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->j:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b()V

    :goto_0
    return-void
.end method
