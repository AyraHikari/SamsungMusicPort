.class public Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;
.super Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$CachedGenreModel;
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

    .line 37
    new-instance v0, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$2;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$3;

    invoke-direct {v1}, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$3;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    .line 27
    new-instance p1, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader$1;-><init>(Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;->a:Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;->a:Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;)V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/CachedGenreDataLoader;->a:Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils;->b(Landroid/content/Context;Lcom/samsung/android/app/music/browse/util/BrowseGenreUtils$OnGenreChangedListener;)V

    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 0

    return-void
.end method
