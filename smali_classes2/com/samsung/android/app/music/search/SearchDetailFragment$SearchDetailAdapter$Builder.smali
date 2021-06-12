.class public Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;
.super Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;->c()Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;->d()Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;->d()Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public d()Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 339
    new-instance v0, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;-><init>(Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;Lcom/samsung/android/app/music/search/SearchDetailFragment$1;)V

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;->c()Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
