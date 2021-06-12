.class public Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;
.super Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected synthetic a()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->c()Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->d()Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->a:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->c()Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->d()Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public d()Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 91
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;)V

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;->c()Lcom/samsung/android/app/music/browse/list/artist/ArtistSectionCursorAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
