.class final Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/ResizableHeightItemKt;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field final synthetic b:Lcom/samsung/android/app/music/list/ResizableHeightItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$2;->b:Lcom/samsung/android/app/music/list/ResizableHeightItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$2;->b:Lcom/samsung/android/app/music/list/ResizableHeightItem;

    invoke-interface {p2}, Lcom/samsung/android/app/music/list/ResizableHeightItem;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$2;->b:Lcom/samsung/android/app/music/list/ResizableHeightItem;

    iget-object p3, p0, Lcom/samsung/android/app/music/list/ResizableHeightItemKt$addResizableHeightItem$2;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-interface {p2, p3, p1}, Lcom/samsung/android/app/music/list/ResizableHeightItem;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
