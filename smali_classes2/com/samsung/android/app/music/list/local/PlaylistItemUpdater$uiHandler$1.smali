.class public final Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;)V

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.list.local.PlaylistItemUpdater.PlaylistItemInfo"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
