.class final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$albumId$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$albumId$2;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()J
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$albumId$2;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_album_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$albumId$2;->invoke()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
