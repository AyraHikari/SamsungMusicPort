.class Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->buildUpQueue(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

.field final synthetic val$queueChangedReason:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;I)V
    .locals 0

    .line 1129
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$3;->val$queueChangedReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->getAudioIds(Ljava/util/List;)[J

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->isSameList([J[J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1136
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$3;->val$queueChangedReason:I

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->setQueueItems(Ljava/util/List;I)V

    .line 1138
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;)V

    goto :goto_0

    :cond_0
    const-string p1, "Queue was composed but it is not same list!"

    .line 1142
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printWarnLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
