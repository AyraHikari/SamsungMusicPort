.class public abstract Lcom/samsung/android/app/music/list/LoadMoreHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/LoadMoreManager;


# static fields
.field private static final a:Ljava/lang/String; = "LoadMoreHelper"


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/database/Cursor;)V
    .locals 3

    .line 20
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/LoadMoreHelper;->a(Landroid/database/Cursor;)Z

    move-result p2

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/list/LoadMoreHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLoadMoreInfo() | hasMore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/LoadMoreHelper;->b:Z

    const/16 v0, -0x3eb

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->removeFooterView(I)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->hasFooterView(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/LoadMoreHelper;->c()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addFooterView(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Landroid/database/Cursor;)Z
    .locals 1

    const-string v0, "has_more"

    .line 38
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected c()I
    .locals 1

    const v0, 0x7f0400e0

    return v0
.end method

.method public k_()V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/LoadMoreHelper;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/LoadMoreHelper;->b:Z

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/LoadMoreHelper;->a()V

    :cond_0
    return-void
.end method
