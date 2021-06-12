.class Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->executeNewListConverter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([JLjava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    .line 1092
    array-length v0, p1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/AddedOrderUtils;->buildupNewList(I)Ljava/util/List;

    move-result-object v0

    .line 1093
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->ensurePlayItems([J)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;-><init>(Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setListInfo(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;)V

    .line 1094
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 1095
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;I)V

    .line 1096
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Landroid/net/Uri;

    move-result-object p1

    .line 1097
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;Landroid/net/Uri;)V

    .line 1098
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setBaseUri(Landroid/net/Uri;)V

    .line 1100
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {p1, p3, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;ZI)V

    .line 1102
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->reloadMeta()V

    return-void
.end method
