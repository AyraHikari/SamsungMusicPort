.class final Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$deletePlaylists$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;->deletePlaylists$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$deletePlaylists$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$deletePlaylists$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$deletePlaylists$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$deletePlaylists$1;->INSTANCE:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$deletePlaylists$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$deletePlaylists$1;->invoke(Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylist;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
