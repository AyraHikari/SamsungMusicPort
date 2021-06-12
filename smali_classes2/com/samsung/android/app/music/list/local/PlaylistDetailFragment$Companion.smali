.class public final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1540
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .locals 3

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1544
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;-><init>()V

    .line 1545
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_playlist_id"

    .line 1546
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "key_title"

    .line 1547
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
