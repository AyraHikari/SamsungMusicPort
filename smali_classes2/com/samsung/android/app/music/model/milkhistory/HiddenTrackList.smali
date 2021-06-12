.class public Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private trackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milkhistory/SimpleHiddenTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;
    .locals 3

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;-><init>()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;->trackList:Ljava/util/ArrayList;

    .line 25
    iget-object v1, v0, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;->trackList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/music/model/milkhistory/SimpleHiddenTrack;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/model/milkhistory/SimpleHiddenTrack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static create(Ljava/util/List;)Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;-><init>()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;->trackList:Ljava/util/ArrayList;

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    iget-object v2, v0, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;->trackList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/app/music/model/milkhistory/SimpleHiddenTrack;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/music/model/milkhistory/SimpleHiddenTrack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
