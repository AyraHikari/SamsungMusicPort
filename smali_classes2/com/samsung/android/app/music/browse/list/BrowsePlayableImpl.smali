.class public Lcom/samsung/android/app/music/browse/list/BrowsePlayableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Playable;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private final b:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;",
            "Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableImpl;->b:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    return-void
.end method


# virtual methods
.method public l_()V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableImpl;->b:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;->a([JILcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->K()V

    return-void
.end method
