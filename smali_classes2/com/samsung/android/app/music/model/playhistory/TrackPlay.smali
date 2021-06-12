.class public final Lcom/samsung/android/app/music/model/playhistory/TrackPlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;
    }
.end annotation


# instance fields
.field private final event:Lcom/samsung/android/app/music/model/AdjustmentEvent;

.field private final playlistId:Ljava/lang/String;

.field private final settlementExt:Ljava/lang/String;

.field private final startDate:Ljava/lang/String;

.field private final streamingId:Ljava/lang/String;

.field private final trackId:Ljava/lang/String;

.field private final trackTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->access$000(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;->trackId:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->access$100(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;->trackTitle:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->access$200(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;->playlistId:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->access$300(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;->settlementExt:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->access$400(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;->startDate:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->access$500(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;->streamingId:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->access$600(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)Lcom/samsung/android/app/music/model/AdjustmentEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;->event:Lcom/samsung/android/app/music/model/AdjustmentEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;Lcom/samsung/android/app/music/model/playhistory/TrackPlay$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay;-><init>(Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;)V

    return-void
.end method
