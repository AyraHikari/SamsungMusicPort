.class public abstract Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/LoadMoreManager;


# instance fields
.field private a:Z

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, -0x3eb

    .line 23
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->a:Z

    .line 27
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/database/Cursor;)V
    .locals 3

    .line 31
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->a(Landroid/database/Cursor;)Z

    move-result p2

    const-string v0, "BrowseLoadMoreHelper"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLoadMoreInfo. hasMore - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 35
    iget p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->b:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->removeFooterView(I)V

    goto :goto_0

    .line 37
    :cond_0
    iget p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->b:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->hasFooterView(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 38
    iget p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->b:I

    const v0, 0x7f0400e0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addFooterView(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->a:Z

    return-void
.end method

.method protected a(Landroid/database/Cursor;)Z
    .locals 2

    const-string v0, "has_more"

    .line 44
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 46
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public k_()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->a(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->a()V

    :cond_0
    return-void
.end method
