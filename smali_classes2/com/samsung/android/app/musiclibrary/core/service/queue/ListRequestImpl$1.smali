.class Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/ProviderInserter$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->enqueue(IILjava/util/List;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

.field final synthetic val$action:I

.field final synthetic val$playMode:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;II)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;->val$action:I

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;->val$playMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([JLjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    .line 269
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;->val$action:I

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;->val$playMode:I

    const/4 v1, 0x0

    .line 270
    invoke-static {p2, v0, p1, v1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->create(II[JZI)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    move-result-object p1

    .line 271
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/ListRequestImpl;->enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    return-void
.end method
