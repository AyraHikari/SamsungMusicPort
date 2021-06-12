.class Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;I)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    check-cast p4, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;->entryRemoved(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 274
    iget-object p1, p3, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->content:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .line 275
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 276
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;)Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    :cond_0
    return-void
.end method
