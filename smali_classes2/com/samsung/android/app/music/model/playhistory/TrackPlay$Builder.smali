.class public final Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/playhistory/TrackPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final DEBUG:Z

.field private mEvent:Lcom/samsung/android/app/music/model/AdjustmentEvent;

.field private mId:Ljava/lang/String;

.field private mPlaylistId:Ljava/lang/String;

.field private mSettlementExt:Ljava/lang/String;

.field private mStartDate:Ljava/lang/String;

.field private mStreamingId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->DEBUG:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mPlaylistId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mSettlementExt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mStartDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mStreamingId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Lcom/samsung/android/app/music/model/AdjustmentEvent;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mEvent:Lcom/samsung/android/app/music/model/AdjustmentEvent;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/model/playhistory/TrackPlay;
    .locals 2

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;-><init>(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;Lcom/samsung/android/app/music/model/playhistory/TrackPlay$1;)V

    return-object v0
.end method

.method public setEvent(Lcom/samsung/android/app/music/model/AdjustmentEvent;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mEvent:Lcom/samsung/android/app/music/model/AdjustmentEvent;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mPlaylistId:Ljava/lang/String;

    return-object p0
.end method

.method public setSettlementExt(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mSettlementExt:Ljava/lang/String;

    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mStartDate:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamingId(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mStreamingId:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
