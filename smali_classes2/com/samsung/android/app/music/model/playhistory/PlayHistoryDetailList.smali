.class public Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/playhistory/PlayHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/playhistory/PlayHistory;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toContentValuesArray()[Landroid/content/ContentValues;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 24
    iget-object v1, p0, Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/playhistory/PlayHistory;

    .line 25
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/playhistory/PlayHistory;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
