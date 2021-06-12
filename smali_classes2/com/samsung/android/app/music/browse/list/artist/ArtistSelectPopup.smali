.class public Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistViewHolder;,
        Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;)Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;)",
            "Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/base/ArtistModel;

    .line 43
    new-instance v4, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/samsung/android/app/music/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "key_artist_list"

    .line 45
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "ArtistSelectPopup"

    const-string p1, "show - manager is null"

    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->a(Ljava/util/List;)Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;

    move-result-object p1

    const-string v0, "ArtistSelectPopup"

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f040119

    return v0
.end method

.method protected a(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "key_artist_list"

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->a:Ljava/util/ArrayList;

    :cond_0
    const p2, 0x7f130370

    .line 77
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 78
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;ZZ)V

    .line 80
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 83
    new-instance p1, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->a:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$1;-><init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;->a(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup;->b:Lcom/samsung/android/app/music/browse/list/artist/ArtistSelectPopup$ArtistListAdapter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected b()I
    .locals 1

    const v0, 0x7f110141

    return v0
.end method
