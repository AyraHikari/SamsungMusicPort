.class public Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public static makeTestPlayHistory()Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;
    .locals 3

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;-><init>()V

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->list:Ljava/util/ArrayList;

    .line 34
    iget-object v1, v0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->list:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->makeTestPlayHistoryMap()Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 24
    iget-object v1, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;

    .line 25
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryMap;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
