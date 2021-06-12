.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$analytics$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/SpotifyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$analytics$2;->this$0:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;
    .locals 2

    .line 1165
    new-instance v0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$analytics$2;->this$0:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$analytics$2;->invoke()Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;

    move-result-object v0

    return-object v0
.end method
