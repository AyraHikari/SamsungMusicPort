.class public Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayItem;",
            ">;)",
            "Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;-><init>()V

    .line 14
    iput-object p0, v0, Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;->videoList:Ljava/util/List;

    return-object v0
.end method
