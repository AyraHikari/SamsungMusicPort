.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$networkStateChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SpotifyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$networkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$networkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->f(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragmentKt;->a(Lcom/samsung/android/app/music/network/NetworkManager;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$networkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager;I)V

    :cond_0
    return-void
.end method
