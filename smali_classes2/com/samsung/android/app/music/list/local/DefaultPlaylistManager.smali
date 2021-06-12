.class public final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;,
        Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;,
        Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;,
        Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$SpaceItemDecoration;,
        Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Companion;


# instance fields
.field private final c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

.field private d:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

.field private final f:Lkotlin/Lazy;

.field private final g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "multiWindowManager"

    const-string v4, "getMultiWindowManager()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->b:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;",
            "Z)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->i:Z

    .line 60
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    .line 61
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    .line 60
    invoke-direct {p1, p2, p3, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    .line 65
    new-instance p1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    check-cast p2, Landroid/support/v4/app/Fragment;

    iget-boolean p3, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->i:Z

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;-><init>(Landroid/support/v4/app/Fragment;Z)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->d:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    .line 68
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$multiWindowManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$multiWindowManager$2;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->f:Lkotlin/Lazy;

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->d:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    check-cast p2, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance p2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$SpaceItemDecoration;

    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$SpaceItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setOverScrollMode(I)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/16 p3, 0x7be

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance p2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$1;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 87
    invoke-static {}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManagerKt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->d()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$2;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->d:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    return-object p0
.end method

.method private final d()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->d:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->i:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a(Z)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->e:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->forceLoad()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->d:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    .line 101
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->e:Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.contents.MusicCursorLoader"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->i:Z

    return-void
.end method

.method public final b()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "*>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method

.method public final c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->h:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
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

    .line 95
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;-><init>()V

    .line 96
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->g:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fragment.activity!!.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    check-cast p2, Landroid/support/v4/content/Loader;

    return-object p2
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->e(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->d(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;->d:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method
