.class public Lcom/samsung/android/app/music/browse/list/BrowseReorderableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# instance fields
.field final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseReorderableImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseReorderableImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "BrowseReorderableImpl"

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveItem. from - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", to - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;->moveItem(II)V

    :cond_0
    return-void
.end method
