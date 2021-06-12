.class Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 3

    const-string v0, "UiList"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onItemClick() | position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " | view: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "UiList"

    .line 222
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " historyId : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "offer_type"

    .line 226
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 227
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$3;->a:Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailActivity;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "UiList"

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " onItemClick() cursor is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
