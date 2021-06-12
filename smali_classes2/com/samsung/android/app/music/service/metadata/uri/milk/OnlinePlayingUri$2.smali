.class Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->b(I)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;Ljava/lang/String;J)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$2;->c:Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalBytes()J
    .locals 2

    .line 252
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$2;->b:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri$2;->a:Ljava/lang/String;

    return-object v0
.end method
