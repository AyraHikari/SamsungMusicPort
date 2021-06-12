.class final Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ArtistCheckableList"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/ArtistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;",
            ")V"
        }
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->a:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    .line 202
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 4

    const-string p2, "checkedItemPositions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->a:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/music/list/local/ArtistFragment;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string p2, "music_album_artist"

    goto :goto_0

    :cond_0
    const-string p2, "artist_id"

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->a:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "album COLLATE LOCALIZED , track"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->a:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/ArtistAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {v0, p2, v1, p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object p1

    const-string p2, "MediaDbUtils.getAudioIds\u2026mPositions)\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
