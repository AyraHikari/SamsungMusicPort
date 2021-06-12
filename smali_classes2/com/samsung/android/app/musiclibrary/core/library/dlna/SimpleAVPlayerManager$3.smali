.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V

    return-void
.end method
