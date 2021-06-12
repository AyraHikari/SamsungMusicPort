.class public final Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([JZLjava/lang/String;Z)Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
    .locals 3

    const-string v0, "checkedItemIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;-><init>()V

    .line 376
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_checked_ids"

    .line 377
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p1, "key_add_to_favorite"

    .line 378
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_playlist_id"

    .line 379
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_selected_all"

    .line 380
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
