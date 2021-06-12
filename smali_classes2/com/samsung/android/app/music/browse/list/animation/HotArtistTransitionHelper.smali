.class public Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$SharedElementCallbackAdapter;,
        Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;,
        Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionTarget;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

.field private static b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

.field private static c:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Landroid/support/v4/app/Fragment;

.field private i:Z

.field private j:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;)V

    sput-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;)V

    sput-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;)V

    sput-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->c:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->i:Z

    .line 108
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$1;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->j:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/view/View;)Landroid/os/Bundle;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b(Ljava/lang/String;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a()Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 299
    new-array v1, v0, [I

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f130073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 301
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 303
    aget v1, v1, v2

    .line 305
    new-array v0, v0, [I

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 307
    aget v3, v0, v2

    sub-int/2addr v3, v1

    aput v3, v0, v2

    .line 309
    sget-object v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->a:Landroid/graphics/drawable/Drawable;

    .line 310
    sget-object v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->d:I

    .line 311
    sget-object v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    aget v0, v0, v2

    iput v0, v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->e:I

    .line 312
    sget-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->b:I

    .line 313
    sget-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->c:I

    .line 314
    sget-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->f:I

    .line 315
    sget-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->g:I

    const-string p1, "HotArtistTransitionHelper"

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureStartViewBeforeTransition. background - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    iget-object v1, v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/view/View;)Landroid/os/Bundle;
    .locals 5

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_thumbnail_url"

    .line 70
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 71
    new-array p0, p0, [I

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gtz p0, :cond_0

    const-string v2, "HotArtistTransitionHelper"

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSharedElementBundle. width under 0. before - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", after - "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {v2, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    if-gtz v1, :cond_1

    const-string v2, "HotArtistTransitionHelper"

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSharedElementBundle. height under 0. before - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", after - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    const-string v2, "key_view_width"

    .line 89
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_view_height"

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_transition_name"

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "HotArtistTransitionHelper"

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSharedElementBundle. view. w - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", h - "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b()Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    return-object v0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    const-string v0, "HotArtistTransitionHelper"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performTransition. requested - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->h:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->i:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->i:Z

    .line 207
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a(Landroid/view/View;)V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d()V

    .line 210
    iget-object p4, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    new-instance v7, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$3;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p4, v0, v7}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->e()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->h:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method static synthetic c()Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->c:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->e:Landroid/view/View;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const-string v0, "HotArtistTransitionHelper"

    const-string v1, "applyTransitionOverlayInfo. start background is null"

    .line 327
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    .line 334
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 335
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 336
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 337
    sget-object v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    iget v3, v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->d:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 338
    sget-object v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    iget v3, v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->e:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 339
    sget-object v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    iget v3, v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->b:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 340
    sget-object v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    iget v3, v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->c:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "HotArtistTransitionHelper"

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyTransitionOverlayInfo. info - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    iget-object v1, v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->f:Landroid/view/View;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->i:Z

    const-string v0, "HotArtistTransitionHelper"

    const-string v1, "resetTransitionValues"

    .line 353
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->j:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->g:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    const v0, 0x7f13015d

    .line 121
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string p4, "sharedElementTarget"

    .line 122
    invoke-virtual {v5, p4}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    .line 123
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    const-string p2, "HotArtistTransitionHelper"

    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "go. pos - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->postponeEnterTransition()V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 5
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V

    .line 137
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "HotArtistTransitionHelper"

    const-string v0, "onFragmentStarted. rootview is null"

    .line 139
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->i:Z

    const-string v1, "HotArtistTransitionHelper"

    const-string v2, "onFragmentStarted"

    .line 144
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f13016a

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    const v1, 0x7f13016d

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->e:Landroid/view/View;

    const v1, 0x7f13016c

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->f:Landroid/view/View;

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->e:Landroid/view/View;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->e:Landroid/view/View;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    const/4 v2, 0x3

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x106000d

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 150
    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    const-string v1, "HotArtistTransitionHelper"

    const-string v2, "onFragmentStarted. make round corner"

    .line 152
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->h:Landroid/support/v4/app/Fragment;

    const p1, 0x7f130150

    .line 155
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->g:Landroid/support/v7/widget/RecyclerView;

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    const v1, 0x7f13016b

    .line 159
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v1, "HotArtistTransitionHelper"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFragmentStarted. startInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HotArtistTransitionHelper"

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFragmentStarted. endInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HotArtistTransitionHelper"

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFragmentStarted. overlapRendering - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    .line 164
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", layerType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->d:Landroid/view/View;

    .line 165
    invoke-virtual {v3}, Landroid/view/View;->getLayerType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->b:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    iget-object v1, v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f13016e

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 170
    sget-object v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->c:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;

    iget-object v1, v1, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$TransitionOverlayViewInfo;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper$2;-><init>(Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->h:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    :goto_0
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentStopped(Landroid/support/v4/app/Fragment;)V

    .line 191
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;->j:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
