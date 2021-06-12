.class public final Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$ArtistDetailViewPagerAdapter;,
        Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$ArtistPagerTitleQueryArgs;,
        Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$AlbumArtistPagerTitleQueryArgs;,
        Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private e:I

.field private f:Landroid/support/design/widget/TabLayout;

.field private g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

.field private final j:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onPageChangeListener$1;

.field private final k:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "keyword"

    const-string v4, "getKeyword()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "groupType"

    const-string v4, "getGroupType()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 45
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$keyword$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$keyword$2;-><init>(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c:Lkotlin/Lazy;

    .line 46
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$groupType$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$groupType$2;-><init>(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->d:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onPageChangeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onPageChangeListener$1;-><init>(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->j:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onPageChangeListener$1;

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;-><init>(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->k:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Ljava/util/ArrayList;
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->h:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const-string v0, "tabIds"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->e:I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez p0, :cond_0

    const-string v0, "artistDetailViewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final c()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Landroid/support/design/widget/TabLayout;
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->f:Landroid/support/design/widget/TabLayout;

    if-nez p0, :cond_0

    const-string v0, "tabLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)I
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c()I

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-nez v0, :cond_0

    const-string v1, "favoriteable"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->n_()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic n_()Ljava/lang/Boolean;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public o_()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-nez v0, :cond_0

    const-string v1, "favoriteable"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->o_()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 148
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "key_tab_id"

    .line 149
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->e:I

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x3039

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->k:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;

    check-cast v2, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f040010

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 218
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, "tabIds"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->e:I

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

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, "tabIds"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v1, :cond_1

    const-string v2, "artistDetailViewPager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 141
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v1, "if (this@ArtistDetailFra\u2026          tabId\n        }"

    .line 138
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "key_tab_id"

    .line 143
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 164
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->h:Ljava/util/ArrayList;

    .line 166
    new-instance p2, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    new-instance v2, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "keyword"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x10003

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    check-cast v2, Lcom/samsung/android/app/music/list/favorite/Category;

    invoke-direct {p2, v0, v2}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    const-string v0, "resources.configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->h:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    const-string v0, "tabIds"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/List;)V

    :cond_1
    const p2, 0x7f13007c

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    .line 171
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$ArtistDetailViewPagerAdapter;

    .line 172
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v4

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v2, "childFragmentManager"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b()Ljava/lang/String;

    move-result-object v6

    const-string v2, "keyword"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c()I

    move-result v7

    move-object v2, v0

    move-object v3, p0

    .line 171
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$ArtistDetailViewPagerAdapter;-><init>(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;I)V

    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->j:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onPageChangeListener$1;

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 170
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    const p2, 0x7f130142

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/support/design/widget/TabLayout;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->g:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-nez v0, :cond_2

    const-string v2, "artistDetailViewPager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 183
    invoke-virtual {p2}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0058

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 184
    invoke-virtual {p2}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100614

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 182
    invoke-static {p2, v0, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/design/widget/TabLayout;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const-string v2, "tabIds"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    iget v2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    :cond_4
    const-string v0, "view.findViewById<TabLay\u2026bId))?.select()\n        }"

    .line 180
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->f:Landroid/support/design/widget/TabLayout;

    .line 189
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 190
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->c(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Z)V

    .line 192
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 195
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-nez p2, :cond_6

    const/4 p1, 0x0

    :cond_6
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p1, :cond_7

    new-instance p2, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$onViewCreated$4;-><init>(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_7
    return-void

    .line 170
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.widget.MusicViewPager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    if-nez v0, :cond_0

    const-string v1, "favoriteable"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;->z()Z

    move-result v0

    return v0
.end method
