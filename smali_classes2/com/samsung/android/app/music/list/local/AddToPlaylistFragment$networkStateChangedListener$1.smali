.class final Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$networkStateChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$networkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$networkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->a()V

    return-void
.end method
