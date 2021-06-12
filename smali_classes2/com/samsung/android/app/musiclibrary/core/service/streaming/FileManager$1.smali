.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/util/Pair<",
        "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
        "Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;I)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/util/Pair;

    check-cast p4, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$1;->entryRemoved(ZLjava/lang/String;Landroid/util/Pair;Landroid/util/Pair;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/util/Pair;Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;",
            ">;",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;",
            "Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 74
    iget-object p4, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 76
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;)Landroid/util/SparseArray;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p4

    if-ltz p4, :cond_0

    .line 77
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Print mRequestPare entryRemoved evicted "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " key  "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but it is current playing item, thus put it again"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$100(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileManager;Ljava/lang/String;)V

    .line 84
    iget-object p1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;->active(Z)V

    :cond_1
    :goto_0
    return-void
.end method
