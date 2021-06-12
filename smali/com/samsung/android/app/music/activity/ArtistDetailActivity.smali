.class public final Lcom/samsung/android/app/music/activity/ArtistDetailActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;,
        Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;,
        Lcom/samsung/android/app/music/activity/ArtistDetailActivity$AlbumArtistPagerTitleQueryArgs;,
        Lcom/samsung/android/app/music/activity/ArtistDetailActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity$Companion;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

.field private g:Z

.field private h:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private final k:Lcom/samsung/android/app/music/activity/ArtistDetailActivity$onPageChangeListener$1;

.field private final l:Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->g:Z

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$onPageChangeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$onPageChangeListener$1;-><init>(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->k:Lcom/samsung/android/app/music/activity/ArtistDetailActivity$onPageChangeListener$1;

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;-><init>(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->l:Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final a(Z)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    :cond_2
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->d:I

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    return-object p0
.end method


# virtual methods
.method public getLocalTracksCount()I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->h:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->getLocalTracksCount()I

    move-result v0

    return v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->getLocalTracksCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public launchSearch()V
    .locals 3

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SECH"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/activity/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "key_keyword"

    .line 141
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->b:Ljava/lang/String;

    const-string v2, "key_title"

    .line 142
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->c:Ljava/lang/String;

    const-string v2, "key_group_type"

    .line 143
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->d:I

    const-string v2, "key_tab_id"

    .line 144
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->j:I

    const-string v2, "key_search_enabled"

    .line 145
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->setLaunchSearchEnabled(Z)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_keyword"

    .line 148
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->b:Ljava/lang/String;

    const-string v3, "key_title"

    .line 149
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->c:Ljava/lang/String;

    const-string v3, "key_group_type"

    .line 150
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->d:I

    .line 151
    iput v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->j:I

    const-string v3, "key_search_enabled"

    .line 152
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->setLaunchSearchEnabled(Z)V

    .line 155
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040010

    .line 157
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->setContentView(I)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->initMiniPlayer()V

    .line 161
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->c:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->c:Ljava/lang/String;

    .line 162
    new-instance p1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->i:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "resources"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v2, "config"

    .line 165
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 166
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->i:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/List;)V

    :cond_2
    const p1, 0x7f13007c

    .line 169
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    .line 170
    new-instance p1, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v0, "applicationContext"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v0, "supportFragmentManager"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v6, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->b:Ljava/lang/String;

    if-nez v6, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    iget v7, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->d:I

    move-object v2, p1

    move-object v3, p0

    .line 170
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;-><init>(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;I)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    check-cast p1, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->k:Lcom/samsung/android/app/music/activity/ArtistDetailActivity$onPageChangeListener$1;

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const p1, 0x7f130067

    .line 177
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .line 178
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabMode(I)V

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    if-nez p1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setLayoutDirection(I)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->e:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    if-nez p1, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    iget v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(IZ)V

    .line 184
    new-instance p1, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/activity/LocalTracksCountObservableImpl;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    check-cast p1, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->h:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x3039

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->l:Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;

    check-cast v2, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void

    .line 177
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.widget.SlidingTabLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.widget.MusicViewPager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onResume()V
    .locals 2

    .line 190
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onResume()V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "my_music_artist_detail_album"

    goto :goto_0

    :pswitch_1
    const-string v0, "my_music_artist_detail_track"

    .line 196
    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_keyword"

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_title"

    .line 201
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_group_type"

    .line 202
    iget v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_search_enabled"

    .line 203
    iget-boolean v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_tab_id"

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "tabIds!![artistDetailViewPager!!.currentItem]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    const/4 p1, 0x1

    .line 216
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->setFullPlayerEnterEnabled(Z)V

    .line 217
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a(Z)V

    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    const/4 p1, 0x0

    .line 210
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->setFullPlayerEnterEnabled(Z)V

    .line 211
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a(Z)V

    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->g:Z

    return-void
.end method

.method public setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->h:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    return-void
.end method

.method public updateLocalTrackCount()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->h:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->updateLocalTrackCount()V

    return-void
.end method
