.class public final Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->a:Ljava/lang/String;

    return-void
.end method

.method private final f(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->c(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
    .locals 1

    const-string v0, "column"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->f(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    .locals 2

    .line 177
    new-instance v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;->c()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
