.class final Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$animationView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/support/constraint/ConstraintLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$animationView$2;->$view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/support/constraint/ConstraintLayout;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$animationView$2;->$view:Landroid/view/View;

    const v1, 0x7f1302ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockAlbumArt$animationView$2;->invoke()Landroid/support/constraint/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
