.class Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$1;
.super Ljava/lang/Object;
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
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->killServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 60
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Finalize exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 62
    :goto_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
