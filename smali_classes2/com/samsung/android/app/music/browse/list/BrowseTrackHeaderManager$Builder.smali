.class public Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

.field private d:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->b:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->c:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->d:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->c:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->d:Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;
    .locals 2

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$1;)V

    return-object v0
.end method
