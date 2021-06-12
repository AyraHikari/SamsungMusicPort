.class public final Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method private final b(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->d:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;

    return-void
.end method

.method private final f(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->a:Ljava/lang/String;

    return-void
.end method

.method private final g(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method private final h(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;
    .locals 1

    const-string v0, "radioOptionable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->b(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->e()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;
    .locals 1

    const-string v0, "playlistIdCol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->f(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->e()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;
    .locals 1

    const-string v0, "playlistNameCol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->g(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->e()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->f()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;
    .locals 1

    const-string v0, "playPositionCol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->h(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->e()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->d:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$Optionable;

    return-object v0
.end method

.method protected e()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public f()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;
    .locals 2

    .line 143
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;->e()Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
