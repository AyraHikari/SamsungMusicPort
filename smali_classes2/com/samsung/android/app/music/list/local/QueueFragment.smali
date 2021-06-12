.class public Lcom/samsung/android/app/music/list/local/QueueFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/QueueFragment$ReorderableImpl;,
        Lcom/samsung/android/app/music/list/local/QueueFragment$NowPlayingDeletable;,
        Lcom/samsung/android/app/music/list/local/QueueFragment$NowPlayingCheckableList;,
        Lcom/samsung/android/app/music/list/local/QueueFragment$RemoteTrackActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<",
        "Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/download/Downloadable;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field private c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

.field private d:Z

.field private e:I

.field private f:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/Boolean;

.field private l:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

.field private m:Lcom/samsung/android/app/music/network/NetworkManager;

.field private n:Lcom/samsung/android/app/music/download/Downloadable;

.field private o:Landroid/view/View;

.field private p:I

.field private q:Z

.field private r:Z

.field private final s:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final t:Landroid/animation/AnimatorListenerAdapter;

.field private final u:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

.field private final v:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final w:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->d:Z

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->e:I

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->i:Z

    .line 140
    iput v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->p:I

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->q:Z

    .line 470
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$5;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->s:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 590
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$8;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->t:Landroid/animation/AnimatorListenerAdapter;

    .line 662
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$9;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->u:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 762
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$10;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->v:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 772
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$11;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->w:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/QueueFragment;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->e:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/QueueFragment;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->i()Landroid/support/v7/widget/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)Lcom/samsung/android/app/music/list/local/QueueFragment;
    .locals 2

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_is_handle_actionbar"

    .line 149
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    new-instance p0, Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;-><init>()V

    .line 151
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private a(II)V
    .locals 5

    .line 609
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1304dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p2, :cond_1

    const/16 p1, 0x8

    .line 614
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string v1, "%d"

    const/4 v2, 0x1

    .line 616
    new-array v3, v2, [Ljava/lang/Object;

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%d"

    .line 617
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v2, :cond_2

    const/16 p1, 0x5c

    .line 621
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p1, 0x2f

    .line 623
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/QueueFragment;II)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(II)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1

    .line 546
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 547
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$6;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 567
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->t:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 518
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "extra.sort_state"

    .line 521
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 524
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->p:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 527
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->p:I

    .line 528
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->l:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;->a(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->a(I)V

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Z)V

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/QueueFragment;Landroid/os/Bundle;)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->i:Z

    return p1
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f130164

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->o:Landroid/view/View;

    const v0, 0x7f1304dd

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 297
    new-instance v0, Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    const v1, 0x7f130068

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->k()Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->l:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/QueueFragment;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f(Z)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)Z
    .locals 0

    .line 534
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Landroid/os/Bundle;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/QueueFragment;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/QueueFragment;Landroid/os/Bundle;)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/list/local/QueueFragment;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->p:I

    return p0
.end method

.method private c(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f130126

    .line 502
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x7f0f02e5

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 504
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 506
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    :cond_0
    const v0, 0x7f130326

    .line 508
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 510
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f(Z)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/list/local/QueueFragment;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->e:I

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->d:Z

    return p1
.end method

.method private e(I)V
    .locals 2

    .line 538
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 539
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->d:Z

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 541
    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->h(Z)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/list/local/QueueFragment;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->d:Z

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->i(Z)V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->q:Z

    return p1
.end method

.method private h(Z)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->o:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->r:Z

    return p1
.end method

.method private i()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f130285

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    :goto_0
    return-object v0
.end method

.method private i(Z)V
    .locals 0

    .line 782
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d(Z)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->i()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f02013f

    .line 254
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 255
    new-instance v1, Lcom/samsung/android/app/music/list/local/QueueFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 265
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz v1, :cond_0

    .line 266
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    new-instance v1, Lcom/samsung/android/app/music/list/local/QueueFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_0
    return-void
.end method

.method private k()Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    .locals 3

    .line 574
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->g()[I

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/list/local/QueueFragment$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/QueueFragment$7;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/QueueFilterableImpl;-><init>([ILcom/samsung/android/app/music/list/local/QueueFilterableImpl$OnChangedOptionListener;)V

    return-object v0
.end method

.method private l()V
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->m:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->m:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->w:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 636
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->v:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode_option"

    const/4 v3, 0x1

    .line 637
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 639
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->m()V

    return-void
.end method

.method private m()V
    .locals 3

    .line 643
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->u:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 645
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->u:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 646
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->u:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 647
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->u:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicQueue()Ljava/util/List;

    move-result-object v2

    .line 648
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getCloneBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 647
    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private n()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->m:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->m:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->w:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 656
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->v:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode_option"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->u:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .line 323
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->a(Landroid/view/View;)V

    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 451
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->b()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected d(I)V
    .locals 0

    return-void
.end method

.method public f()Z
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->r:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x7be

    if-ne p1, p2, :cond_0

    const-string p1, "key_checked_ids"

    .line 403
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    .line 410
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 411
    new-instance p3, Lcom/samsung/android/app/music/list/local/QueueFragment$4;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment$4;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;[J)V

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->lifeCycleLogEnabled:Z

    .line 159
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->j:Landroid/content/Context;

    .line 160
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->j:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    const-string v0, "303"

    const-string v1, "305"

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->m:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->m:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->r:Z

    .line 166
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_1

    .line 167
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 458
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    const v1, 0x7f14000a

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->a(Landroid/view/ContextMenu;Landroid/view/View;)Landroid/view/ContextMenu;

    move-result-object p1

    .line 460
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->i()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f140025

    .line 366
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 367
    new-instance v2, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/menu/PlayerQueueMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 368
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    .line 369
    new-instance v1, Lcom/samsung/android/app/music/list/local/QueueFragment$3;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/list/local/QueueFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 376
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p2, 0x7f0401df

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 335
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onDestroyView()V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->t:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 346
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->n()V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_is_handle_actionbar"

    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 303
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStart()V

    .line 304
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->q:Z

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Z)V

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->l()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 312
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStop()V

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->n()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 180
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->s:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    const-string v1, "current_playlist_mod"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v2, "key_is_handle_actionbar"

    .line 190
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->k:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const-string v2, "key_is_handle_actionbar"

    .line 192
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->k:Ljava/lang/Boolean;

    .line 194
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->k:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->j()V

    .line 197
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p2, :cond_3

    .line 198
    new-instance p2, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 199
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 202
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    const v2, 0x106000d

    .line 203
    invoke-virtual {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setBackgroundColor(I)V

    .line 204
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    new-array v3, v1, [I

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    .line 205
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(I)V

    .line 206
    invoke-virtual {p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 209
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    const v3, 0x7f0b0350

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    const/4 v0, 0x3

    .line 210
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b_(I)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v2

    long-to-int v0, v2

    const v2, 0x20004

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 214
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$RemoteTrackActionModeOptionsMenu;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/music/list/local/QueueFragment$RemoteTrackActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;Lcom/samsung/android/app/music/list/local/QueueFragment$1;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->a()Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;

    move-result-object v0

    .line 214
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 217
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$NowPlayingCheckableList;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment$NowPlayingCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 218
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$NowPlayingDeletable;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/music/list/local/QueueFragment$NowPlayingDeletable;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;Lcom/samsung/android/app/music/list/local/QueueFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 219
    new-instance v0, Lcom/samsung/android/app/music/list/local/QueueFragment$ReorderableImpl;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/music/list/local/QueueFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/QueueFragment;Lcom/samsung/android/app/music/list/local/QueueFragment$1;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    .line 221
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 222
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->g()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d(I)V

    .line 225
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(Landroid/view/View;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->b(Landroid/view/View;)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->c()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 230
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->d()Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 232
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 235
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->e()Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 237
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 240
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->q:Z

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Z)V

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->c:Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFunctionCompat;->f()Lcom/samsung/android/app/music/download/Downloadable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->n:Lcom/samsung/android/app/music/download/Downloadable;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 351
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->setUserVisibleHint(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->K()V

    :cond_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 445
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public v()V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->n:Lcom/samsung/android/app/music/download/Downloadable;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment;->n:Lcom/samsung/android/app/music/download/Downloadable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/download/Downloadable;->v()V

    :cond_0
    return-void
.end method
