.class final Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlbumCheckableList"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/AlbumFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
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

    .line 230
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;->a:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    .line 231
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 4

    const-string p2, "checkedItemPositions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "album_id"

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;->a:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;->a:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-static {p2, v0, v1, p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object p1

    const-string p2, "MediaDbUtils.getAudioIds\u2026mPositions)\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
