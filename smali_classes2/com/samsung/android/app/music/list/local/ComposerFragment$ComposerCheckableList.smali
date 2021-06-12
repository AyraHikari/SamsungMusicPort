.class final Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ComposerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComposerCheckableList"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/ComposerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
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

    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;->a:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    .line 214
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 4

    const-string p2, "checkedItemPositions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "composer"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;->a:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;->a:Lcom/samsung/android/app/music/list/local/ComposerFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 220
    invoke-static {p2, v0, v1, p1, v2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)[J

    move-result-object p1

    const-string p2, "MediaDbUtils.getAudioIds\u2026ation.LOCAL\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
