.class Lcom/samsung/android/app/music/help/NoticeListActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/help/NoticeListActivity$1;->a(Lcom/samsung/android/app/music/model/basic/NoticeListModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/help/NoticeListActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/help/NoticeListActivity$1;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1$1;->a:Lcom/samsung/android/app/music/help/NoticeListActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1$1;->a:Lcom/samsung/android/app/music/help/NoticeListActivity$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/help/NoticeListActivity;->c(Lcom/samsung/android/app/music/help/NoticeListActivity;)Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/basic/NoticeModel;

    if-nez p1, :cond_0

    .line 95
    invoke-static {}, Lcom/samsung/android/app/music/help/NoticeListActivity;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "item is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1$1;->a:Lcom/samsung/android/app/music/help/NoticeListActivity$1;

    iget-object p2, p2, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->a:Landroid/app/Activity;

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/NoticeModel;->getNoticeUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method
