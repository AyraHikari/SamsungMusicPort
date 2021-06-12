.class public Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;>;",
            "Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->b:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V
    .locals 9
    .param p1    # Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->b:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->b()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 131
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCount()I

    move-result v1

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 136
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide v5

    .line 137
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 138
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 140
    invoke-static {v5}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->fromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/model/PlayTrackInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 142
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 151
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->b:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    new-instance v4, Landroid/util/Pair;

    sget-object v5, Lcom/samsung/android/app/music/model/PlayTrackInfo;->PLAY_TRACK_INFO_CONVERTER:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;Landroid/util/Pair;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 153
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 154
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V

    .line 155
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_1

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->b:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V
    .locals 9
    .param p3    # Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;>;I",
            "Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 80
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCount()I

    move-result v0

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result p1

    const-string v1, "BrowsePlayableListImpl"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play. item - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", valid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "BrowsePlayableListImpl"

    .line 85
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play. item count is zero. pos - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 92
    invoke-virtual {p3, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide v5

    .line 93
    invoke-virtual {p3, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 94
    invoke-virtual {p3, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 96
    invoke-static {v5}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->fromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/model/PlayTrackInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 98
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-le p2, v3, :cond_2

    add-int/lit8 v4, v4, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result p2

    const/4 p3, 0x1

    if-ltz v4, :cond_5

    if-ne p2, p3, :cond_5

    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lt v4, p2, :cond_4

    const-string p1, "BrowsePlayableListImpl"

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "play. queue pos - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", array size - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", itemCount - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 110
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/PlayTrackInfo;

    .line 116
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 117
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 121
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 122
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->b:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->b()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne p1, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    .line 122
    :goto_2
    invoke-static {p2, v0, v1, v4, p3}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZ)V

    return-void
.end method

.method public a([JILcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V
    .locals 7
    .param p1    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-static {p1}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a([J)Ljava/util/List;

    move-result-object p1

    .line 47
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 48
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCount()I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->w_()I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "BrowsePlayableListImpl"

    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play. item count is zero. pos - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 59
    invoke-virtual {p3, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide v4

    .line 60
    invoke-virtual {p3, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {p3, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 63
    invoke-static {v4}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->fromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/model/PlayTrackInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 65
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->b:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    invoke-interface {p3}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->b()Ljava/lang/String;

    move-result-object p3

    .line 72
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 71
    :goto_1
    invoke-static {p1, p3, p2, v2, v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZ)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V

    return-void
.end method

.method public c()Z
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 185
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 186
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    const-string v3, "is_radio_playable"

    .line 188
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    return v1

    .line 193
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    return v2
.end method
