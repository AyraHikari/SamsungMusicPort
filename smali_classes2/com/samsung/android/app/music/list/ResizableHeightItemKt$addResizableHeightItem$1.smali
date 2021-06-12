.class public final Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ResizableHeightItemKt;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field final synthetic b:Lcom/samsung/android/app/music/list/ResizableHeightItem;

.field private c:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;->b:Lcom/samsung/android/app/music/list/ResizableHeightItem;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;->c:I

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 19
    iget p1, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;->c:I

    if-eq p1, p3, :cond_0

    .line 20
    iput p3, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;->c:I

    .line 21
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;->b:Lcom/samsung/android/app/music/list/ResizableHeightItem;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/ResizableHeightItem;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    iget-object p2, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;->b:Lcom/samsung/android/app/music/list/ResizableHeightItem;

    iget-object p3, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-interface {p2, p3, p1}, Lcom/samsung/android/app/music/list/ResizableHeightItem;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
