.class public abstract Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder<",
        "TT;>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private b:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->c:Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->d:Ljava/lang/String;

    const p1, 0x7f100087

    .line 168
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->setThumbnailSize(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;",
            ")TT;"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->b:Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$OnFooterViewCreatedListener;

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;",
            ")TT;"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->d:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->c:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    return-object p1
.end method
