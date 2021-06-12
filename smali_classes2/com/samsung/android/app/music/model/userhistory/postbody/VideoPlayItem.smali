.class public Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private playFrom:I

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;I)Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;
    .locals 1

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;-><init>()V

    .line 14
    iput-object p0, v0, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;->videoId:Ljava/lang/String;

    .line 15
    iput p1, v0, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;->playFrom:I

    return-object v0
.end method


# virtual methods
.method public setPlayFrom(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;->playFrom:I

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;->videoId:Ljava/lang/String;

    return-void
.end method
