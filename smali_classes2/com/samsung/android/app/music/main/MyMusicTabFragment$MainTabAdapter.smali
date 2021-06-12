.class public final Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$ScrollableTabAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MainTabAdapter"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

.field private final c:Lkotlin/Lazy;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/app/Fragment;

.field private f:Z

.field private final g:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$onDlnaTabListener$1;

.field private final h:Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "zoomScale"

    const-string v4, "getZoomScale()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 330
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$zoomScale$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$zoomScale$2;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c:Lkotlin/Lazy;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->f:Z

    .line 357
    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$onDlnaTabListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$onDlnaTabListener$1;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->g:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$onDlnaTabListener$1;

    .line 368
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->i_:Z

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->g:Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$onDlnaTabListener$1;

    check-cast v1, Lcom/samsung/android/app/music/contents/OnDlnaTabListener;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;-><init>(Landroid/content/ContentResolver;Lcom/samsung/android/app/music/contents/OnDlnaTabListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 368
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->h:Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;

    .line 375
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->g()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->j()V

    return-void
.end method

.method private final i()Z
    .locals 9

    .line 465
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;-><init>()V

    .line 466
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    .line 467
    iget-object v4, v0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->uri:Landroid/net/Uri;

    const-string v1, "args.uri"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->selection:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x0

    .line 466
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 468
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final j()V
    .locals 6

    .line 472
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->refreshDlna()V

    .line 474
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->i()Z

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    const v2, 0x1000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    if-ne v1, v3, :cond_2

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-eq v1, v3, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setCurrentItem(I)V

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 491
    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter$updateDlnaDmsItem$1;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;)V

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 506
    iput-boolean v5, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->f:Z

    .line 507
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->notifyDataSetChanged()V

    .line 508
    iput-boolean v4, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->f:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public a(ILandroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;
    .locals 12

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040260

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 380
    iget-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v0, 0x10100

    if-ne p2, v0, :cond_3

    .line 381
    iget-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->b(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    new-instance v0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->c(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;-><init>(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/music/main/MainActivity;)V

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;)V

    .line 382
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->b(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p2, v5}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a(Landroid/view/View;)V

    .line 384
    :cond_3
    :goto_0
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const-string v0, "itemView"

    .line 386
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->a()F

    move-result v8

    const/4 v7, 0x0

    const v0, 0x7f1304df

    .line 388
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tabIds[position]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v3, p2

    move v4, p1

    .line 384
    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;-><init>(ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;FIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p2
.end method

.method public b(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "tabIds[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->a(ILjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object p1
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final c(I)Ljava/lang/Integer;
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "UiList"

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " convertToPosition() tabId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", pos="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    .line 460
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final d()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final f()Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->h:Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;

    return-object v0
.end method

.method public final g()V
    .locals 12

    const-string v0, "UiList"

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " init()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 431
    new-instance v0, Ljava/util/StringTokenizer;

    .line 432
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    .line 431
    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->i_:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    const v1, 0x1000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity!!.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "activity!!.resources.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/List;)V

    :cond_4
    const-string v0, "UiList"

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " init() done tabIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UiList"

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " getItemPosition() item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-boolean v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->f:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    instance-of p1, p1, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->a(I)J

    move-result-wide v1

    long-to-int p1, v1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/ListUtils;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 424
    check-cast p3, Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$MainTabAdapter;->e:Landroid/support/v4/app/Fragment;

    return-void
.end method
