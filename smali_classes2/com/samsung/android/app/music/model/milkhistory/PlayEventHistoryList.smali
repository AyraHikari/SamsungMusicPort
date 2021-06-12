.class public final Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;->history:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEventHistoryList(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;->history:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
