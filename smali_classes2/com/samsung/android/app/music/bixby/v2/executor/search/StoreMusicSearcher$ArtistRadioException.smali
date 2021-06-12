.class Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArtistRadioException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;
    }
.end annotation


# instance fields
.field private errorCode:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException;->errorCode:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException;->errorCode:Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher$ArtistRadioException$ErrorCode;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
