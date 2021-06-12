.class final Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FolderCheckableList"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
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

    .line 187
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCheckableList;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    .line 188
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 4

    const-string p2, "checkedItemPositions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCheckableList;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "bucket_id"

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCheckableList;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCheckableList;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;->getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p2, v0, v1, p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object p1

    const-string p2, "MediaDbUtils.getAudioIds\u2026mPositions)\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
