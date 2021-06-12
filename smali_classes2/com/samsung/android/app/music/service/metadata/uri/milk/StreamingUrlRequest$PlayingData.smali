.class Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayingData"
.end annotation


# instance fields
.field final a:I

.field private final b:Lcom/samsung/android/app/music/model/Track;


# direct methods
.method constructor <init>(ILcom/samsung/android/app/music/model/Track;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->a:I

    .line 204
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->b:Lcom/samsung/android/app/music/model/Track;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->b:Lcom/samsung/android/app/music/model/Track;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->b:Lcom/samsung/android/app/music/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->b:Lcom/samsung/android/app/music/model/Track;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/StreamingUrlRequest$PlayingData;->b:Lcom/samsung/android/app/music/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/Track;->getSettlementExt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
