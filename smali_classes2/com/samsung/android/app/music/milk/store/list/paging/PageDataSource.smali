.class public abstract Lcom/samsung/android/app/music/milk/store/list/paging/PageDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/list/paging/DataSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "Response:",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/milk/store/list/paging/DataSource<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/list/paging/PageDataSource;->a:I

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/list/paging/PageDataSource;->b:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/list/paging/PageDataSource;->c:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/list/paging/PageDataSource;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/list/paging/PageDataSource;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "page - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/list/paging/PageDataSource;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
