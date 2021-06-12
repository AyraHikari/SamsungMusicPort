.class Lcom/samsung/android/app/music/help/NoticeListActivity$1;
.super Lcom/samsung/android/app/music/milk/SimpleSingleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/help/NoticeListActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSingleSubscriber<",
        "Lcom/samsung/android/app/music/model/basic/NoticeListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/android/app/music/help/NoticeListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/help/NoticeListActivity;Landroid/app/Activity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/basic/NoticeListModel;)V
    .locals 3

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/NoticeListModel;->getNoticeList()Ljava/util/List;

    move-result-object p1

    .line 76
    invoke-static {}, Lcom/samsung/android/app/music/help/NoticeListActivity;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled - Notice received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/help/NoticeListActivity;->a(Lcom/samsung/android/app/music/help/NoticeListActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/help/NoticeListActivity;->b(Lcom/samsung/android/app/music/help/NoticeListActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/help/NoticeListActivity;->a(Lcom/samsung/android/app/music/help/NoticeListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/help/NoticeListActivity;->b(Lcom/samsung/android/app/music/help/NoticeListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/help/NoticeListActivity;->c(Lcom/samsung/android/app/music/help/NoticeListActivity;)Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;->addAll(Ljava/util/Collection;)V

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/help/NoticeListActivity;->a(Lcom/samsung/android/app/music/help/NoticeListActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/help/NoticeListActivity;->c(Lcom/samsung/android/app/music/help/NoticeListActivity;)Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->b:Lcom/samsung/android/app/music/help/NoticeListActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/help/NoticeListActivity;->a(Lcom/samsung/android/app/music/help/NoticeListActivity;)Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/help/NoticeListActivity$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/help/NoticeListActivity$1$1;-><init>(Lcom/samsung/android/app/music/help/NoticeListActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lcom/samsung/android/app/music/model/basic/NoticeListModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/help/NoticeListActivity$1;->a(Lcom/samsung/android/app/music/model/basic/NoticeListModel;)V

    return-void
.end method
