.class public Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field a:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field b:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const p1, 0x7f040023

    .line 129
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->a:I

    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->b:Z

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public a(I)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 139
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->a:I

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->a()Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->b:Z

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->a()Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 157
    new-instance v0, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$1;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;->a()Lcom/samsung/android/app/music/browse/list/album/AlbumDetailAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
