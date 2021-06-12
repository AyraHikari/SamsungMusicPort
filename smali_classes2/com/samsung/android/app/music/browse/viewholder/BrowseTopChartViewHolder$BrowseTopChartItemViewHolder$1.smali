.class Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;Landroid/os/Looper;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$1;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder;)V

    .line 151
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder$BrowseTopChartItemViewHolder$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
