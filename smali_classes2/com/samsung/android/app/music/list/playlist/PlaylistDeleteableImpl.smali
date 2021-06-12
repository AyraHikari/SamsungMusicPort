.class public final Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl;
.super Lcom/samsung/android/app/music/list/ListDeleteableImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;
    }
.end annotation


# instance fields
.field private final fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 8

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method protected deleteItemsInternal(Landroid/app/Activity;[J)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 45
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;-><init>(Ljava/lang/ref/WeakReference;[J)V

    .line 46
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlin/Unit;

    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl$DeletePlaylistTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 50
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->c()V

    :cond_2
    return-void

    .line 49
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerViewFragment<*>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onCreateDialogMessage([J)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0025

    .line 38
    array-length v2, p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 39
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
