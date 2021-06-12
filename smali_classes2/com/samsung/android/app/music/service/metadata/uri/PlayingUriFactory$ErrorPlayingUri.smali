.class Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory$ErrorPlayingUri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPlayingUri"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory$1;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory$ErrorPlayingUri;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string p1, "content_error"

    const/4 v0, -0x1

    .line 79
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->a(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public makeCache(J)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method
