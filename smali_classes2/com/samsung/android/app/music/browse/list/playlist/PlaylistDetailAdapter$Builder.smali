.class public Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field a:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const p1, 0x7f040023

    .line 91
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->a:I

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;-><init>(Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$1;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->b:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->a()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;->a()Lcom/samsung/android/app/music/browse/list/playlist/PlaylistDetailAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
