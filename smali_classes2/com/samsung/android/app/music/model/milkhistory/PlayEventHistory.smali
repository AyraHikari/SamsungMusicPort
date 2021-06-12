.class public final Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private playFrom:I

.field private playTime:I

.field private playType:I

.field private playlistId:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;->trackId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;->startTime:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;->playTime:I

    .line 26
    iput p4, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;->playType:I

    .line 27
    iput p5, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;->playFrom:I

    .line 28
    iput-object p6, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;->playlistId:Ljava/lang/String;

    return-void
.end method
