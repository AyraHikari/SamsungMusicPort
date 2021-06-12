.class public Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;,
        Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingDeletable;,
        Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ReorderableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingCheckableList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

.field private f:Z

.field private i:J

.field private j:Lcom/samsung/android/app/music/network/NetworkManager;

.field private k:Z

.field private l:Z

.field private final m:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

.field private final n:Landroid/animation/AnimatorListenerAdapter;

.field private final o:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final p:Ljava/lang/Runnable;

.field private final q:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->f:Z

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->l:Z

    .line 480
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$6;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->m:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 518
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$8;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->n:Landroid/animation/AnimatorListenerAdapter;

    .line 536
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$9;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->o:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 559
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$10;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->p:Ljava/lang/Runnable;

    .line 566
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$11;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->q:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)Landroid/content/Context;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;J)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->c(J)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1

    .line 415
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 416
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 436
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->n:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->d:Z

    return p1
.end method

.method private b(Landroid/database/Cursor;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    .line 375
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const-string v4, "_id"

    .line 383
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 384
    iget-wide v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->i:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 388
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    if-eqz v1, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method private b(J)V
    .locals 2

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$7;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 508
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->c(J)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->f(Z)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    return-object p0
.end method

.method private c(J)V
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->b(J)V

    .line 514
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 515
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    .line 514
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j(I)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->f(Z)V

    return-void
.end method

.method private d()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f130285

    .line 258
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    :goto_0
    return-object v0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->k:Z

    return p1
.end method

.method private e(I)V
    .locals 2

    .line 346
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->l:Z

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 349
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->h(Z)V

    return-void
.end method

.method private f()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;
    .locals 4

    .line 358
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    const v2, 0x7f1304d5

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;-><init>(ILandroid/view/View$OnClickListener;)V

    .line 370
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f0401dc

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator;-><init>(Landroid/support/v4/app/Fragment;I[Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/ButtonEmptyViewCreator$ButtonItem;)V

    return-object v1
.end method

.method private h(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 579
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->k:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->i(Z)V

    return-void
.end method

.method private i()V
    .locals 4

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    const/4 v1, 0x0

    .line 476
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 477
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private i(Z)V
    .locals 2

    .line 583
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f1304d5

    .line 587
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 591
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 592
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const p1, 0x3ebd70a4    # 0.37f

    .line 593
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private j(I)V
    .locals 2

    .line 394
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$4;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->i(I)V

    :goto_0
    return-void
.end method

.method private k(I)V
    .locals 6

    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1304dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    .line 452
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "%d"

    const/4 v3, 0x1

    .line 457
    new-array v4, v3, [Ljava/lang/Object;

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "%d"

    .line 458
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v3, :cond_3

    const/16 p1, 0x5c

    .line 461
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 p1, 0x2f

    .line 463
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_4
    :goto_1
    const/16 p1, 0x8

    .line 454
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->c()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 332
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 333
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b(Landroid/database/Cursor;)I

    move-result p1

    .line 334
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->k(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 335
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    xor-int/lit8 v1, p2, 0x1

    .line 336
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Z)V

    .line 337
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->h(Z)V

    if-nez p2, :cond_2

    .line 339
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->e(I)V

    goto :goto_2

    .line 341
    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->l:Z

    :goto_2
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 327
    new-instance p1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayListQueryArgs;-><init>()V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 275
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    .line 276
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    const-string v1, "play_list_id"

    .line 277
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    move-result-object v0

    const-string v1, "play_list_name"

    .line 278
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    move-result-object v0

    const-string v1, "play_position"

    .line 279
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->f()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100012

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 110
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a:Landroid/content/Context;

    .line 114
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {p1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->k:Z

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 320
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(J)V

    .line 321
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->d()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f140026

    .line 242
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 243
    new-instance v2, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 245
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    .line 246
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$1;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 253
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p2, 0x7f0401df

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 222
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 209
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->n:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    :cond_1
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onHiddenChanged(Z)V

    .line 179
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->f:Z

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->stopScroll()V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->K()V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->l:Z

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->i()V

    :goto_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 602
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->f:Z

    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j(I)V

    :cond_0
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

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_ITEM_ID"

    .line 613
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->i:J

    .line 614
    iget-wide p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->i:J

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b(J)V

    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    .line 616
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b(Landroid/database/Cursor;)I

    move-result p1

    .line 617
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->k(I)V

    .line 618
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->e(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->m:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 169
    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->q:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->m:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 200
    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->j:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->q:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 204
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 130
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->o:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 133
    new-instance p2, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    const-string v0, "current_playlist_radio"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "SMUSIC-RadioQueue"

    const-string p2, "onViewCreated but activity is null"

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    const v1, 0x106000d

    .line 142
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setBackgroundColor(I)V

    .line 143
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    .line 144
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(I)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 147
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ActionModeOptionsMenu;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$1;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 148
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    const v4, 0x7f0b0350

    invoke-direct {v1, p2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    const/4 p2, 0x3

    .line 149
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b_(I)V

    .line 151
    new-instance p2, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingCheckableList;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 152
    new-instance p2, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingDeletable;

    invoke-direct {p2, p0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$NowPlayingDeletable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$1;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 153
    new-instance p2, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ReorderableImpl;

    invoke-direct {p2, p0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$1;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->c(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->g()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->d(I)V

    const p2, 0x7f130164

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->c:Landroid/view/View;

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->f()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 227
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setUserVisibleHint(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->K()V

    :cond_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 314
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
