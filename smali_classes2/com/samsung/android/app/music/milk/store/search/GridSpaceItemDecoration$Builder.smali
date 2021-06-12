.class public Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;)I
    .locals 0

    .line 109
    iget p0, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->c:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;
    .locals 0

    .line 126
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->c:I

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;
    .locals 2

    .line 137
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;-><init>(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$1;)V

    return-object v0
.end method

.method public b(I)Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;
    .locals 0

    .line 131
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->b:I

    .line 132
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->c:I

    return-object p0
.end method
