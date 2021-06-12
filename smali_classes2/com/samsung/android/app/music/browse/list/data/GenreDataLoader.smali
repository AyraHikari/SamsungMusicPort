.class public Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;
.super Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
        "Lcom/samsung/android/app/music/model/base/GenreBaseModel;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$2;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$GenreDataSource;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    .line 26
    new-instance p1, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader$1;-><init>(Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->a:Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenreDataLoader. loader created."

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h()Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->f()Lcom/samsung/android/app/music/browse/list/data/PageDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/PageDataSource;->d()Lcom/samsung/android/app/music/model/base/ServerResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->c()V

    :cond_0
    return-void
.end method

.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->a:Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->g()V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/GenreDataLoader;->a:Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b(Landroid/content/Context;Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;)V

    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
