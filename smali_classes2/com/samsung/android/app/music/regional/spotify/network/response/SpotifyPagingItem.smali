.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;
.super Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;->items:Ljava/util/List;

    return-object v0
.end method
