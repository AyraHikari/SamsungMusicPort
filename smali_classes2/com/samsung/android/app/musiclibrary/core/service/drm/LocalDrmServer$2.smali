.class Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;Landroid/os/Looper;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 241
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-void
.end method
