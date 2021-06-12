.class public Lcom/samsung/android/app/music/browse/data/BrowseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/data/BrowseContentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/samsung/android/app/music/browse/data/BrowseData;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseData;->a:I

    return v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/data/BrowseContentData;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/data/BrowseData;->b:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/data/BrowseContentData;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/data/BrowseData;->b:Ljava/util/List;

    return-object v0
.end method
