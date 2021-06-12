.class Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest$UrlRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->a(I)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri$1;->a:Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;

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

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri$1;->a:Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;->a(Lcom/samsung/android/app/music/service/metadata/uri/LocalPlayingUri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
