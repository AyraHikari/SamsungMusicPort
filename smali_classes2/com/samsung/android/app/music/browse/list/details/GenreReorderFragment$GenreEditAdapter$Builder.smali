.class public Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;
.super Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;->c()Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;->d()Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;->d()Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public d()Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 242
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$1;)V

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;->c()Lcom/samsung/android/app/music/browse/list/details/GenreReorderFragment$GenreEditAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
