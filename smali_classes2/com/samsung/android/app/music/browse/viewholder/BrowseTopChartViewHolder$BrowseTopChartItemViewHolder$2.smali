.class Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->b(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 180
    iput v0, p1, Landroid/os/Message;->what:I

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->b(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->b(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$2;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->b(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
