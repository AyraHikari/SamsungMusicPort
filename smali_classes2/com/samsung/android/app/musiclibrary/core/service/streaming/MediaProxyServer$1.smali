.class Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->requestLocalContentsUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalBytes()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer$1;->val$path:Ljava/lang/String;

    return-object v0
.end method
