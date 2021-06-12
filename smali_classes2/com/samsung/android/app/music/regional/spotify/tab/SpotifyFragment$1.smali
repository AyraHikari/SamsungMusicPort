.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;Lcom/samsung/android/app/music/network/NetworkInfo;)V

    return-void
.end method
